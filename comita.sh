echo "Considerando os resultados, você ainda quer realizar o commit e o push? (sim/nao)"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "sim"  ]] ; then
  echo "My name"
  echo "Escreva a mensagem de commit"
        read message
        git add .
        git commit -m"${message}"
        if [ -n "$(git status - porcelain)" ];
            then
                echo "Está limpo."
            else
                git status
            echo "Fazendo o push!!"
            git push -u origin master
            echo "Feito!"
        fi
else
  echo "Ok, até mais!"
fi
exit
