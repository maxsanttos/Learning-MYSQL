
CREATE DATABASE pizzaria;

USE pizzaria;

-- id INT PRIMARY KEY AUTO_INCREMENT NOT NULL

CREATE TABLE bordas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

insert into bordas (tipo)
values ("Cheddar");
insert into bordas (tipo)
values ("Catupiry");

select * from bordas;

CREAte table massas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

insert into massas (tipo)
values ("Massa comum");
insert into massas (tipo)
values ("Massa integral");
insert into massas (tipo)
values ("Massa temperada");

select * from massas;

CREATE TABLE sabores(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

select * from sabores;
insert into sabores (nome)
values ("Frango com CAtupiry");
insert into sabores (nome)
values ("Calabresa");
insert into sabores (nome)
values ("Lombinho");
insert into sabores (nome)
values ("Filé com Cheddar");
insert into sabores (nome)
values ("Portuguesa");
insert into sabores (nome)
values ("4 Queijos");
insert into sabores (nome)
values ("Margherita");
insert into sabores (nome)
values ("Baccon");

CREATE TABLE pizzas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    borda_id INT NOT NULL,
    massa_id INT NOT NULL,
    FOREIGN KEY borda_id_fk(borda_id) REFERENCES bordas(id),
    FOREIGN key massa_id_fk(massa_id) REFERENCES massas(id)
);

CREATE TABLE pizza_sabor(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    sabor_id INT NOT NULL,
    FOREIGN KEY pizza_id_fk(pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY sabor_id_fk(sabor_id) REFERENCES sabores(id)
);

CREATE TABLE status(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

insert into status (tipo)
values ("Em produção");
insert into status (tipo)
values ("Em entrega");
insert into status (tipo)
values ("Concluido");

select * from status;

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY pizza_id_fk(pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY status_id_fk(status_id) REFERENCES status(id)
);



