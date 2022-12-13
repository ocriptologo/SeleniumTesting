echo "Escreva a mensagem de push"
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
fi