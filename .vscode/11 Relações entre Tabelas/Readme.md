# Relação entre Tabela

## O que são relacionamentos?

* SQL é uma linguagem de bancos de dados relacionais , ou seja, que **possuem relações**;

* Estas relações servem para a **separação de responsabiblidades de tabelas**, ex:cadastri, endereço,pedidos;

* Há um link entre as tabelas, que são as **Foreign Keys (FKs)**;

* E há também vários **tipos de relacionamentos**: Um para um, um para muitos e muitos para muitos;

## Os tipos de Relacionamentos

* **One to One (um para um):** Quando uma tabela possui uma conexão com outra e vice-versa;

* **One to MAny (um para muitos):** Quando uma tabela possui diversos registros em outra, porém a segunda só pode possuir uma conexão;

* **Many to Many (muitos paraa muitos):** Quando duas tabelas podem ter conexões com diversos rgistros entre elas;

## One to One

* Com este relacionamento teremos **no máximo um registro ligado a outro**;

* **Exemplo:** Estudante x Informações de Contato;

* Cada estudante pode ter apenas uma informações de contato e a informação de contato e a informação de contato é apenas daquele estudante;

* A estrutura é feita por duas tabelas ligadas por uma **FOREIGN KEY**;

Comando

```one_to_one
USE relacoes;

CREATE TABLE estudantes(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    turma VARCHAR(5)
);

CREATE TABLE contatos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    estudante_id INT NOT NULL,
    FOREIGN KEY(estudate_id) REFENCES estudantes(id)
);

INSERT INTO estudantes (nome, turma) VALUES("Matheus","304d");
INSERT INTO estudantes (nome, turma) VALUES("João","101a");

INSERT INTO contatos(telefone,estudante_id) VALUES("(48)99999-9999",1);
INSERT INTO contatos(telefone,estudante_id) VALUES("(11)88888-8888",2);

SELECT estudantes.nome, estudantes.turma, contatos.telefone
FROM estudantes
JOIN contatos ON contatos.estudante_id = estudantes.id;
```

## One to Many

* Com este relaciomento teremos **uma tabela que possui vários relainamentos com outra**, mas o inverso não ocorre;

* **Exemplo:** Cliente x Pedido;

* Uma cliente pode ter diversos pedidos na loja, porém um pedido é de um único cliente;

* Semelhante ao one to one, porém **a segunda tabela tem diversos registros ligados a um na outra**;

comando

```One_to_many
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_nascimento DATE
);
CREATE TABLE pedidos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    qtd_itens INT(10),
    total FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY client_id_fk(cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(nome,data_nascimento) VALUES("João","1982-06-12");
INSERT INTO clientes(nome,data_nascimento) VALUES("Matheus","1991-05-01");

SELECT * FROM clientes;

INSERT INTO pedidos(qtd_itens, total,cliente_id) VALUES(5,214.01,2);
INSERT INTO pedidos(qtd_itens, total,cliente_id) VALUES(2,350.36,2);
INSERT INTO pedidos(qtd_itens, total,cliente_id) VALUES(6,652.28,2);

SELECT * FROM pedidos;

-- Pedidos Matheus
SELECT clientes.nome, pedidos.id AS pedidos_id
FROM clientes
JOIN pedidos ON pedidos.cliente_id = clientes.id
WHERE clientes.id = 2;

INSERT INTO pedidos(qtd_itens, total,cliente_id) VALUES(5,214.01,2);
INSERT INTO pedidos(qtd_itens, total,cliente_id) VALUES(5,214.01,2);
INSERT INTO pedidos(qtd_itens, total,cliente_id) VALUES(5,214.01,1);

-- Pedidos João
SELECT clientes.nome, pedidos.id AS pedidos_id
FROM clientes
JOIN pedidos ON pedidos.cliente_id = clientes.id
WHERE clientes.id = 1;
```

## Many to Many

* No Many to Many as duas tabelas tem **múltiplas relações entre si**;

* **Exemplo:** Alunos x Materias;

* Um aluno pode pode estar fazendo diversas matérias diferentes e uma matéria poe ter diversos alunos matriculados;

* Normalmente este recurso usa uma **pivot table**;

* Onde esta serve apenas para conter as relações entre tabelas;

Comando

```many_to_many
CREATE TABLE materias(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

CREATE TABLE estudate_materia(
    estudante_id INT NOT NULL,
    materia_id INT NOT NULL,
    FOREIGN KEY estudante_id_fk(estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY materia_id_fk(materia_id) REFERENCES materias(id)
);

INSERT INTO materias(nome) VALUES("Matematica");
INSERT INTO materias(nome) VALUES("Portugues");
INSERT INTO materias(nome) VALUES("Quimica");

SELECT * FROM materias;

INSERT INTO estudantes(nome, turma) VALUES("Maria","202b");
INSERT INTO estudantes(nome, turma) VALUES("Amanda","104c");

SELECT * FROM estudantes;

INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(1,1);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(1,2);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(1,3);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(2,1);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(2,3);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(3,1);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(3,3);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(4,1);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(4,2);
INSERT INTO estudate_materia (estudante_id,materia_id) VALUES(4,3);

SELECT * FROM estudate_materia;

SELECT  * FROM estudantes
JOIN estudate_materia ON estudate_materia.estudante_id = estudantes.id
AND estudate_materia.materia_id = 2;

SELECT  * FROM estudantes
JOIN estudate_materia ON estudate_materia.estudante_id = estudantes.id
AND estudate_materia.materia_id = 1;

SELECT  * FROM estudantes
JOIN estudate_materia ON estudate_materia.estudante_id = estudantes.id
AND estudate_materia.materia_id = 3;
```

Fim!!
