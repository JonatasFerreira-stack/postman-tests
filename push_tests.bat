@echo off
echo Rodando os testes do Postman...
postman collection run "C:\Users\jjfsilva\Documents\Login e Register - WEB API.postman_collection.json" -r cli --reporter-html-export resultado.html

echo Testes executados. Subindo para o GitHub...

git add .
git commit -m "Atualização dos testes do Postman"
git push origin master

echo Testes enviados para o GitHub.
