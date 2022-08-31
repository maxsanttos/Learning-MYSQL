# Curso de SQL

## O que é SQL?

* A **SQL** é uma linguagem de banco de dados;

* É um acrônimo de **S**tructured **Q**uery  **L**anguage (Linguagem estruturada de consulta);

* É a linguagem para os **Bancos de dados relacionais** (MYSQL, PostgreSQL,SQL Server);

* Trabalhamos com ela criando  **Queries** (INSERT, UPDATE, SELECT);

* Com esta linguagem podemos **criar e manipular DBS**;

## SQL  x  MYSQL

* SQL é a **linguagem** e MYSQL é o **SGBD**;

* SGBD é um acrônimo de **S**istema **G**erenciador de **B**ancos de **D**ados;

* Ou seja, Mysql é um software que **gerencia os nosso bancos de dados;

* Enquanto SQL é a linguagem que vamos utilizar para **manipular e criar os bancos**;

## O que é um banco de dados?

* É onde **armazenamos os dados no nosso sistema**;

* Vamos criar os bancos de dados **através da SQL**;

* E o MySQL vai ajudar-nos a **gerenciar o banco e o dados**;

* O banco de dados possui algumas entidades fundamentais para o seu correto funcionamento, como **tabelas**;

* As tabelas guardam nosso **dados**;

## Principais elementos de banco de dados

* **Diagrama do Banco:** é o projeto do banco, parte fundamental e mais avançada, que define o sucesso do projeto;

* **Banco de dados:** A entidade que vai guardar todos os elementos do banco;

* **Tabelas:** A categoria dos dados;

* **Colunas:** Tipos de informações que precisamos salvar;

* **Dados:** O dado final entregue élo usuário;

## Instalação do MySQL no Windows

* Vamos instalar o **XAMPP**;

* Este software nos dá o PHP, **MySQL** e também o Apache;

* Com ele podemos facilmente utilizar o banco de dados;

* Depois instalaremos um software para trabalhar com MySQL;

## Executamos Mysql no terminal do Windows

* Para algumas situações vamos precisar do **MySQL no terminal**;

* Para isso precisamos **adicionar o executável do MySQL as variáveis de ambiente**;

* Para conectar no MySQL vamos digitar:

```mysql
mysql -u root

```

* Vamos lá!

## Instalação do Mysql no Linux

* Vamos instalar o MySQL pelo  Linux com o **gerenciador de pacotes**;

* Depois estaremos aptos a **utilizar o MySQL pelo terminal**;

* Porém **vamos seguir o curso na interface gráfica**, para facilitar a visualização;

* A instalação dos softwares está na próxima aula;

* **COMANDOS**

```linux

sudo apt update

sudo apt install mysql-server

```

* **Instalação do MySQL**

```MYSQL
sudo mysql_secure_installation

```

* **Testar o Serviço Mysql**

```MYSQL
systemctl status mysql.service

```

* **Entrando no MySQL e usando o show databases no root para visualizar as informações**

```MYSQL
sudo mysql -u root -p

SHOW DATABASES;
```

## Instalaçao do Mysql Workbench

* O **Workbench** é uma ferramenta do MySQl para visualização de dados;

* Com ela podemos também criar **diagramas relacionais**;

* Vamos **adotar este software** para utilização no curso!

* Site ->  <https://dev.mysql.com/downloads/workbench/>

## Instalação HeidiSQL

* O **HeidISQL** é outra ferramenta de visualização de dados;

* Esta **Funciona para a maioria dos SGBD's relacionais**;

* É uma outra alternativa de software, que tem **requisitos menores para instalar e rodar**;

* Site -> <https://www.heidisql.com/download.php>

## Instalação VS Code

* O **VS Code** é um editor de código muito potente;

* Vamos adotá-lo como **ferramenta de edição de código do curso;

*Além disso **possui um terminal integrado**, que vai nos ajudar com comandos de MySQL no terminal;

* Vamos lá!

## Extensão MySQL no VS Code

* A extensão de MySQL no S Code vai permitir **acessar o banco e fazer manipulação direto no editor**;

* **Basta ir no marketplace e digitar mysql**, é o primeiro resultado;

* Você pode seguir o curso com esta extensão também!

## Sintaxe do SQL

* A sintaxe é a maneira como escrevemos instruções;

* Em SQL, por convenção, todas as **instruções são em maiúsculos** e os **nomes são em minúsculo** (banco,tabela,coluna), ex:

* CREATE DATABASE teste;

* Toda instrução deve ser **finazada com ponto e vírgula**;

* Alguns SGBD's não exigem ponto e vírgula, porém inserir eles em todas as instrução é uma maneira de garantir a execução;

## **Exercício 1**

1. **Crie o seu primeiro banco de dados**;

2. Define um nome parao seu banco e aplique a instrução da última aula;

* Mãos à obra;

```criando um banco
 CREATE DATABASE primeirobanco;
```

## O que é importação de banco?

* IMportação de banco é quando temos um **arquivo pronto de banco(com tabelas e dados) e inserimos ele no nosso SGBD**;

* Geralmente originado de uma **exportação**;

* Ação simples para obter todos os dados já cadastrados em um sistema;

* Após a importação podemos utilizar **como se o banco houvesse sido criado na nossa máquina**;

* É uma prática comum no dia a dia em uma empresa;

## Importando banco de dados

* **OBS:**faça o download dos arquivos do curso!

* Vamos primeiramente acessar o **MySQL pelo terminal**;

* Agora devemos criar um banco, pode ser **empresa** o nome;

* Selecionar o banco com: **USE  nome**

* E depois utiliar o comando: **source arquivo**

* O comando USE faz o banco de dados ser o principal no momento;

* Precisamos estar com o terminal na pasta do arquivo;

## Selecionando dados de uma tabela

* **Obs:** vamos ver seleção mais a frente e em detalhes!

* Para selecionar todos os dados de uma tabela utilizamos o comando:

* **SELECT *FROM nome da tabela**

* Desta maneira receberemos os dados inseridos na tabela alvo;

* Vamos utilizar a tabela de funcionários neste exemplo;

```Selecionando todos os dados de uma tabela

USE empresa;

SELECT * FROM funcionarios;
```

## **Exercício 2**

1. Agora é sua vez, selecione os dados da tabela **servicos**;

2. Esta tabela também está no nosso banco de dados!

* Mãos à obra!

```Servico

USE empresa;

SELECT * FROM servicos

```

## Como tirar o máximo proveito

* **Execute todas as instruções** das aulas;

* Faça os **exercícios**;

* **Crie seus próprios exemplos** bancos, tabelas e dados;

* Execute as instruções de aula em outras situações;

* **Dica bônus:** ver e depois executar;

## Crianção de Bancos

### Intrdução da seção

## Criando um banco de dados

* Agora vamos nos aprofundar em **criação de bancos e tabelas**;

* O primeiro passo é sempre criar o banco;

* Utilizamos o comando: **CREATE DATABASE nome_banco**;

* Desta forma teremos uma **entidade disponível para criação de tabelas** e posteriormente inserção de dados;

## Verificando bancos de dados

* Para garantir que um banco foi criado podemos utilizar um **comando utilitário**;

* Que é o: **SHOW DATABASES**;

* Todos os bancos que possuímos no nosso SGBD serão exibidos;

## Removendo banco de dados

* Para deletar um banco de dados podemos utilizar o seguinte comando:

* **DROP DATABASE nome_banco**;

```drop
DROP DATABASE primeirobanco;

```

* Note que esta ação frequentemente é chamada de **dropar**;

* Após esta ação **tabelas e dados são perdidos**!

## **Exercício 3**

1. Crie um banco de dados com nome de computador;
2. Verifique se o banco foi criado;
3. Remova o banco;

```criando
CREATE DATABASE computador;
```

```Verificando
SHOW DATABESES;
```

```Removendo
DROP DATABASE computador;
```

## EXPORTANDO BANCOS

* Podemos também exportar nosso banco, utilizamos o comando:

* **mysqldump -u root nome_banco > nome_arquivo.sql**;

* Desta forma todas as tabelas e dados ficarão salvas em um arquivo. sql

* Podemos testar com o nosso banco de dados empresa!

## Utilizando banco de dados

* Para qualquer que envolva um determinado banco, precisamos utilizar ele;

* O comando é: **USE nome_banco**;

* Agora os comandos serão direcionados a este banco;

* Podemos então criar tabelas nele!
