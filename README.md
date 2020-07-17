# Fatec_Lab_Eng_Soft
Repositório destinado ao projeto de calculadora feito em JSP Servlet com banco de dados MySQL.

## Criação banco de dados
Para criar o banco de dados é necessário entrar na pasta "BD" do projeto através do terminal do windows e digitar o comando: "mysql -u root -p < jsp.sql" onde root é o seu usuário no banco. Assim que teclar enter, será requisitado a senha para este usuário e após informado, o database já estará configurado com todas as tabelas e com o usuário paulo de senha 123 inserido. 
Você pode assistir a este pequeno tutorial onde é mostrado passo a passo:
https://youtu.be/pZZnsBywVVc

## Estrutura do código
Dentro do diretório src/main/java há duas pastas, o diretório com nome "Controller" possui todos os arquivos relacionados as requisições e tratamentos do back-end, redirecionamento, inserção no banco e login. Na pasta "Model" estão os arquivos models para comunicação com o banco, dentro deles podemos destacar o MdlCalculadora e o usuario onde respectivamente comunica com a tabela calculadora e usuário.
Na pasta src/main/webapp estão as views do projeto (padrão MVC), todos os arquivos jsp que são carregados para a visualização do usuário se encontram nesta pasta.
Ao voltarmos a raiz, encontramos a pasta BD e dentro desta pasta se encontra o arquivo "jsp.sql" que será usado para preparar o banco.

## Como executar o projeto
Para a execução do projeto, crie o banco como já demostrado acima. Após isso, utilizando o terminal do Windows navegue até a pasta do projeto e digite: "gradle build" e assim que terminar, digite "gradle appRun".
Vá para o seu navegador e digite http://localhost:8080/Calculadora/.
Você será redirecionado para uma tela de login, preencha o nome e senha respectivamente com 'paulo' e '123'. caso queira criar um novo usuário, crie no banco de dados utilizando md5. Ex: ..... values ('Nome do usuário',md5('senha'));



