# O que é um JOIN?

* São **consultas que envolvem duas ou mais tabelas**;

* As **tabelas geralmente possuem relação entre si**;

* Temos então uma consulta mais complexa e com mais dados;

* Há **três tipos mais utilizados de JOIN**:

* LEFT E RIGHT JOIN;

* INNER JOIN;

## INNER JOIN

* O **INNER JOIN** vai resultar nas colunas que fazem relação entre as tabelas;

* Podemos determinar qual coluna resgatar após a instrução SELECT;

* Utilizamos a instrução **ON** para determinar as colnas que precisam ser iguais;

comando

```mysql
USE employees;

SELECT employees.first_name,employees.last_name,salaries.salary AS Salario
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.first_name,employees.last_name,salaries.salary AS Salario
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 120000;
```

## Exercício 22

1. Utilize o INNER JOIN:

2. Para selecionar o primeiro nome, genero e cargo;

3. A relação entre as tabelas salaries e title;

comando

```mysql
SELECT employees.first_name,employees.gender,titles.title AS Cargo
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no;
```

## LEFT JOIN

* O **LEFT** vai retornar todos os dados da tabela da esquerda e os necessários da direita;

* Também é chamado de **LEFT OUTER JOIN**;

* Haverá dados retornados da tabela da esquerda mesmo se não corresponder com a outra;

```mysql
SELECT pessoas.nome, enderecos.rua
LEFT JOIN enderecos
ON pessoas.id = enderecos.pessoas.id

SELECT employees.first_name,employees.gender,titles.title AS Cargo
from employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no;

```

## RIGHT JOIN

* O **RIGHT JOIN** é semelhante ao LEFT, poém ele trás as colunas a mais da direita;

* Chamado também de **RIGHT OUTER JOIN**;

```mysql
SELECT pessoas.nome, enderecos.rua
FROM pessoas
RIGHT JOIN pessoas
ON pessoas.id = enderecos.pessoas.id

SELECT employees.first_name,employees.gender,titles.title AS Cargo
from employees
RIGHT JOIN titles
ON employees.emp_no = titles.emp_no;
```

## JOIN com mais de duas tabelas

``` mysql
USE employees;

SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no;
```

## Existem outros JOINs?

* Sim, **existem**!

* Porém 99% das vezes os três vistos aqui serão o suficiente;

* Geralmente queremos a **relação entre duas ou mais tabelas**, para pegar dados refernetes a um registro;

* Então o **INNER JOIN** cai como uma luva, removendo dados não necessários;

### Fim
