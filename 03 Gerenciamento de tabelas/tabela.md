# O que é uma tabela?

* É a entidade responsável por **guardar nossos dados;

* Uma tabela possui **colunas**;

* As **colunas são como categorias** dos nossos dados: nome,profissão,idade;

* As colunas possuem **tipos de dados determinados**, como: textos,números,datas e etc;

* E **atributos**: não nulo, chave primária, auto incremento e etc;

## Criando uma tabela

* Agora vamos criar nossa primeira tabela,o comando é:

```criando tabela
CREATE TABLE nome_tabela(<coluna><tipo de dado>);
```

* Podemos inserir diversas colunas e com diferentes tipos de dados;

* O mais comun e que acaba sendo mais utilizado é o **VARCHAR**, que representa os textos/strings de uma tabela;

## Removendo tabelas

* Podemos também remover as tabelas que criamos;

* Lembrando que **todos os dados serão perdidos**;

* Comando é:

```removendo tabela
DROP TABLE <nome_tabela>;
```

* Agora a tabela não existe mais no nosso banco!

## Sobre os tipos de dados da SQL

* Os tipos de dados **classificam um dado** e os inserimos em uma coluna;

* Podemos ter dados como: texto, data, número e outros;

* É uma **parte extremamente importante da criação do nosso projeto** e banco de dados;

* Alguns dados também **permitem limites** serem definidos, como quantidade máxima de caracteres;

* São divididos em:**texto, númerico,data e especial**;

## Tipos de dado de texto

* **CHAR(x)**: aceita textos com 0 a 255 caracteres;

* **VARCHAR(x)**: aceita textos com 0 a 65535 caracteres;

* Onde **X** é a quantidade máxima;

* **TINYTEXT**: apenas texto com até 255 caracteres;

* **MEDIUMTEXT**: apenas texto com até 16777215 caracteres;

* Obs: **CHAR** e **VARCHAR** aceitam números e caracteres especiais;

## **Exercício 3**

1. Agora vamos trabalhar com tipos de dados, para isso vamos precisar de um novo banco!

2. Crie um banco com o nome:**teste_tipo_dados**

```criando um banco e selecionando para o uso

CREATE DATABASE teste_tipo_dados;

USE teste_tipo_dados;

```

## Tabela com colunas do tipo texto

### Vamos criar uma tabela com textos

* Para exercitar, vamos criar uma tabela com os tipos de texto;

* Utilizaremos **CHAR,VARCHAR** e também **MEDIUMTEXT**;

* Vamos lá!!

```criando
CREATE TABLE produtos( nome VARCHAR(50), sku CHAR(5), informacoes MEDIUMTEXT);

```

## **Exercício 4**

1. Crie uma tabela  chamada cadastro;

2. Com dois campos como VARCHAR, o nome e sobrenome;

3. Limite os dois para 100 caracteres;

* Comando:

```criando
USE teste_tipos_dados;

CREATE TABLE cadastro(nome VARCHAR(100), sobrenome VARCHAR(100));

```

## Inserindo dados em uma tabela

* Uma das operações mais comuns é **inserir dados**, utiliamos o comando:

```inserir
INSERT INTO <tabela>(<coluna...>) VALUES(<VALORES....>);

```

* Precisamos inserir o nome das colunas e também os valores para cada uma, **separados por vírgula**:

* Os **valores precisam corresponder a ordem das colunas**;

* **Obs:** Valores de texto são inseridos entre aspas;

```inserindo
INSERT INTO produtos(nome,sku,informacoes) VALUES("Playstations 5","PS5XY","É um videogame de última geração");
```

## **Exercício 5**

1. Crie dois inserts para inserir produtos na nossa tabela produtos;

2. Depois selecione todos os dados, dica: **SELECT * FROM...**

* Comando:

```iserindo dados

USE teste_tipos_dados;

INSERT INTO produtos(nome,sku,informacoes) VALUES("NOTEBOOK","N45RY","É um computador portatil");

INSERT INTO produtos(nome,sku,informacoes) VALUES("WINDOWNS 10","WIN10","Sistema Operacional da microsoft");
```

```select
USE teste_tipos_dados;

SELECT * FROM produtos;

```

## Criando tabelas com dados numérios

## **Exercício 6**

* Os tipos numéricos não precisam de aspas ao serem inseridos;

* **BIT(x)**: 1 a 64 caracteres;

* **TINYINT(x)**: 1 a 255 caracteres;

* **BOOL**: 0 é falso e outros valores são verdadeiros;

* **INT(x)**: valores entre -2147483648 a 2147483647;

### Vamos criar uma tabela com números

* Vamos testar **BOOL** e **INT**;

* Neste exemplo vamos também inserir outra tipo de dado, para ver que insso é possível e muito utilizado;

* E por fim vamos inserir dados nesta tabela;

* Vamos lá!

```mysql
USE teste_tipos_dados;

CREATE TABLE servidores(nome VARCHAR(100), espaco_disco INT(10), ligado BOOL);
```

```inserindo

INSERT INTO servidores(nome,espaco_disco, ligado) VALUES("Alfa",1326521542,1);

INSERT INTO servidores(nome,espaco_disco, ligado) VALUES("Beta",2365214,1);
```

```select
SELECT * FROM servidores;
```

## **Exercício 7**

* Sua vez de inserir servidores;

* Insira mais dois servidores na nossa tabela;

* Depois selecione todos os dados, dica: SELECT * FROM servidores;

```INSERT

INSERT INTO servidores(nome,espaco_disco,ligado) VALUES("1",456235,0);

INSERT INTO servidores(nome,espaco_disco,ligado) VALUES("2",456235,0);
```

```SELECT

SELECT * FROM servidores;
```

## Criando uma tabela com dados de data

* TIPOS DE DATA

* **DATE**: Aceita uma data no formato YYYY-MM-DD;

* **DATETIME**: Aceita uma data com horário no formato YYYY-MM-DD hh:mm:ss;

* **TIMESTAMP**: Aceita uma data no formato de DATETIME, porém apenas entre os anos 1970 a 2038;

* As datas também inserimos entre aspas!;

## Vamos criar uma tabela com datas

* Vamos utilizar para este exemplo **DATE**;

* Criaremos uma tabela com **nome e data de nascimento**;

* E por último vamos inserir dados na tabela;

* Vamos lá!!

```mysql
CREATE TABLE aniversario(nome VARCHAR(100),dataNascimento DATE);

INSERT INTO aniversario(nome, dataNascimento) VALUES("João","1990-08-10");

INSERT INTO aniversario(nome, dataNAscimento) VALUES("Thiago","1980-06-12")

SELECT * FROM aniversario;
```

## **Exercício 8**

* Insira o seu nome e data de nascimento na tabela;

* Treine também a seleção de todos os dados;

* Mãos à obra!

```mysql

INSERT INTO aniversario(nome,dataNascimento) VALUES("Max","1991-08-02");

SELECT * FROM aniversario;
```

## Porque escolher o tipo de dado?

* Devemos sempre **escolher o tipo de dado mais próximo da nossa necessidade**, e também limitar tamanho quando for possível;

* Isso vai **otimizar o banco**, deixando ele com respostas mais rápidas;

* Além de **economizar espaço em disco**, pois estamos salvando apenas o necessário;

* Pense bem antes de realizar a criação das , para **escolher o tipo correto e limitá-lo**;

## Alteração da tabelas

### Alterando tabelas

* Há três tipos de alterações em SQL;

* **Adição de colunas**;

* **Remoção de colunas**;

* **Modificar tipo da coluna**;

* Vamos criar uma tabela para trabalhar com alterações!

```mysql

USE teste_tipo_dados;

CREATE TABLE funcionarios(nome VARCHAR(100));

```

## Adicionando nova coluna a tabela

* Para **adicionar** uma coluna vamos utilizar o comando:

```mysql
ALTER TABLE <tabela> ADD COLUMN <nome><tipo>;
```

* Desta maneira uma nova coluna é adicionada;

```mysql
USE teste_tipo_dados;

CREATE TABLE funcionarios(nome VARCHAR(100));

ALTER TABLE funcionarios ADD COLUMN cpf char(11);

```

* Inserindo e buscando

``` mysql
INSERT INTO funcionarios(nome, cpf) VALUES("Luiz Carlos","08565349512");

SELECT * FROM funcionarios;
```

## **Exercício 9**

* Adicione a coluna cpf com CHAR(11) na tabela funcionarios;

* Adicione outra coluna da sua escolha;

* Adicione dados a tabela;

* Mãos à Obra!

```mysql
USE teste_tipo_dados;

CREATE TABLE funcionarios(nome VARCHAR(100));

ALTER TABLE funcionarios ADD COLUMN cpf char(11);
ALTER TABLE funcionarios ADD COLUMN dataNascimento DATE;
```

* Inserindo e buscando os dados

``` mysl
INSERT INTO funcionarios(nome, cpf,dataNascimento) VALUES("Luiz Carlos","08565349512","1995-03-15");

SELECT * FROM funcionarios;

```

## Removendo coluna da tabela

* Para **remover** uma coluna vamos utilizar o comando:

``` mysql
ALTER TABLE <tabela> DROP COLUMN<nome>;
```

* Desta maneira uma nova coluna é removida;

## **Exercício 10

1. REmova a coluna que você adicionou anteriomente no exerício 9

2. Mãos à Obra!

```mysql
ALTER TABLE funcionarios DROP COLUMN dataNascimento;
```

## Modificando coluna

* Para **alterar um tipo** de dados vamos utilizar:

```MYSQL
ALTER TABLE <tabela> MODIFY COLUMN <coluna><tipo>;
```

* Agora a coluna está com o novo tipo em vigor;

* Vamos fazer um teste!

```mysql

ALTER TABLE funcionarios MODIFY COLUMN dtaNascimento varchar(100);

ALTER TABLE funcionarios MODIFY COLUMN dtaNAscimento Date;
```

## Comandos do CRUD

## **Exercício 11**

1. Crie um banco de dados chamado cadastro;

2. Crie uma tabela chamada pessoas;

3. Colunas nomes, rg, cpf, e limite;

4. Limite é um valor numérico;

5. Insira 5 dados;

### **Comandos**

```mysql

CREATE DATABASE cadastro;
```

```Usando e criando as tabelas

USE cadastro;

CREATE TABLE pessoas(nome VARCHAR(100),rg CHAR(10) NOT NULL, cpf CHAR(11) NOT NULL, limite INT NOT NULL);
```

``` Inserindo dados

USE cadastro;

INSERT INTO pessoas(nome,rg,cpf,limite) VALUES("Mateus","0645123602","0647895630",5);
INSERT INTO pessoas(nome,rg,cpf,limite) VALUES("João","0644568795","0341585632",4);
INSERT INTO pessoas(nome,rg,cpf,limite) VALUES("Felipe","0222355456","1234569781",3);
INSERT INTO pessoas(nome,rg,cpf,limite) VALUES("Thiago","0326541236","0003256489",2);
INSERT INTO pessoas(nome,rg,cpf,limite) VALUES("José","0562634899","0111235454",1);
```

```Visualizandos a tabela

SELECT * FROM pessoas;
```

## O que é CRUD?

* **CRUD** são as ações que mais são utilizadas em todas as aplicações;

* **Create** = criar/ inserir dados (insert);

* **Read** = ler dados(select);

* **Update** = atualizar dados(update);

* **Delete** = deletar / remover dados(delete);

* **Todas aplicações web com bancos de dados** tem pelo menos uma destas operações e possivelmente todas;

## Selecionar todos os dados

* Para selecionar todos os dados de uma tabela utilizamos;

``` Comando
SELECT * FROM <tabela>;
```

* Desta maneira receberemos **todas as colunas da tabela e também todos os registros;

* Conforme a base vai crescendo, essa consulta pode se tornar muito custosa e também **lenta**;

## Selecionar Colunas específicas

* Para selecionar colunas específicas trocamos o * por o nome das colunas, veja;

```comando
SELECT coluna1,coluna2 FROM <tabela>;
```

* Desta maneira **criamos um filtro**, deixando nossa consulta um pouco mais leve;

* Ao longo do curso aprenderemos outras **técnicas de otimização de consulta**;

## Inserindo dados

* Para inserir dados vamos utilizar a instrução INSERT:

```comando
INSERTO INTO <tabela>(<colunas..>) VALUES (<valores..>);
```

* Os valores e as colunas devem ser **separados por vírgula**;

## A importância do WHERE

* O WHERE é uma cláusula de algumas queries, que determina **quais registros amos atualizar**;

* Por exemplo: **WHERE id=1**;

* Se nãoinserirmos esta instruções em atualizações ou remoções, vamos **aplicar a todos os dados**, o que pode ser um enorme problema;

* Então **lembre-se sempre de inserir WHERE** em update e DELETE;

* Depois veremos sua aplicação com SELECT;

## Atualizando dados

* Para atualizar dados vamos utilizar a instrução **UPDATE**;

```COMANDOS
UPDATE tabela SET <coluna=valor> WHERE <condição>;

UPDATE pessoas SET rg = "123", cpf = "321" WHERE = "Pedro";
```

* Lembre-se de utilizar o **WHERE**;

* Podemos inserir mais colunas , separando elas por **vírgula**;

* SET SQL_SAFE_UPDATES = 0; **caso der error no update**

## **EXERCÍCIO 12**

1. Atualize o limite do quarto registro da sua tabela para 1000;

2. Mãos à obra;

### Comando

```comandos
UPDATE pessoas SET limite=1000 WHERE nome = "Thiago";
```

## Deletando dados

* Para deletar dados vamos utilizar a instrução **DELETE**;

* **DELETE FROM <tabela_nome> WHERE <condição>;**

* Lembre-se de utilizar o **WHERE**, se não deletaremos todos os dados;

* A quantidade de dados removidos depende do WHERE;

## **Exercício 13**

1. Delete registro que tenham limites maiorres que 2000;

2. Mãos à obra!

```comando
USE cadastro;
DELETE FROM pessoas WHERE limite > 100;
```

## O famoso Delete sem Where

quando usando o Delete sem as condições ou WHERE

ele apaga todas as linhas e colunas da nossa tabela;

Comando

```comando
DELETE FROM pessoas;
```

### Fim da seção  COMANDOS DO CRUD