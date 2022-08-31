# CRIANDO CONSTRAINTS

## O que são constraints?

* **São regras** que determinam como os campos serão preenchidos;

* Por exemplo: **NOT NULL** = o campo não pode ser nulo;

* **As constraints são adicionadas na criação da tabela geralmente**, porém podemos alterar tabelas para adicioná-las;

* Estas regras  são de grande utilidade pois **ajudam a organizar e padronizar nosso projeto**;

* Vamos testá-las!

## NOT NULL

* A constraint **NOT NULL** força um valor de uma coluna específica não ser nulo;

* Colocamos a instrução após o nome e tipo da coluna ser declado:**nome VARCHAR(100) NOT NULL;**

* Desta maneira a coluna recebe a constraint:

Comando

```mysql
CREATE TABLE pessoas(nome VARCHAR(100) NOT NULL, idade INT);

INSERT INTO pessoas(nome, idade) VALUES("Max Suel",31);
```

## Dados únicos com UNIQUE

* A constraint **UNIQUE** garante que todos os valore em uma coluna serão diferentes;

* Um caso de uso é e-mail, não queremos e-mails duplicados na nossa base;

* Desta maneira, recebemos um erro caso o dado já tenha sido inserido;

comando

```mysql
ALTER TABLE pessoas ADD COLUMN email VARCHAR(255) UNIQUE;
```

## PRIMARY KEY

* A constraint **PRIMARY KEY** só pode ser adicionada em uma única coluna da tabela, geralmente é o id;

* **O valor deve ser único** e não pode ser nulo;

* Podemos dizer que é um **identificador único de um registro na tabela**;

## AUTO INCREMENT

* A constraint **AUTO INCREMENT** serve para adicionar a quantidade de um em todo registro adicionado;

* Esta constraint é **muito utilizada na coluna id**, já que ela é única e também chave primária;

* Então **não precisamos nos preocupar com este valor no INSERT**;

## FOREIGN KEY

* A **FOREIGN KEY** é uma ligação de uma tabela a outra;

* Por exemplo: uma tabela cadastramos o usuário e em outra o endereço dele;

* Na tabela do endereço temos uma FOREIGN KEY que se refere a o id do usuário;

* Desta maneira conseguimos **impedir remoções de dados que tem ligação entre tabelas**;

## INDEX

* Adicionar um índice a uma coluna **faz a consulta que envolva a mesma se tornar mais rápida**;

* Sem o índice a consulta começa da primeira a última coluna até encontraar que você precisa, com o índice as demais serão ignoradas;

* As consultas que são melhores pelo **INDEX** são as com **WHERE**;
comando

```mysql
CREATE INDEX index_nome ON pessoas(nome);
```

## Removendo INDEX

* Pode chegar um momento que um índice não é mais necessário, então precisamos remover ele;

* **Lembrando que o excesso de índice pode ser prejudicial** ou fazer com que os índices necessários não funcionem corretamente;

* Exemplo de remoção;

* **DROP INDEX <nome_coluna> ON <nome_tabela>;**

## Exercício 21

1.Crie um banco de dados **banco** e uma tabela chamada **contas**;

2.Insira as colunas id, nome, sobrenome, saldo, data_nascimento;

3.Encontre os melhores tipos de dados para as mesmas;

4.A coluna de id deve ser PRIMARY KEY, AUTO_INCREMENT E NOT NULL;

5.Crie um índice em saldo;

6.Adicione 3 registro na tabela;

Comando

```mysql
//criando o banco
CREATE DATABASE banco;

// selecionando o banco
USE banco;

//criando a table
CREATE TABLE contas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
sobrenome VARCHAR(30),
saldo float NOT NULL,
data_nascimento VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);


//Inserindo dados
INSERt INTO contas(nome,sobrenome,saldo,data_nascimento) VALUES("MAX","SANTTOS",500.00,"2022-08-16");

//criando o index
CREATE INDEX index_saldo ON contas(saldo);
```

### FIM
