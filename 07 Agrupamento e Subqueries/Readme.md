# UNION

* O **UNION** é utilizado para combinar o resultado de dois ou mais SELECTS;

* **As colunas precisam ter o mesmo nome**;

* Os resultados serão agregados em uma coluna só, porém **podemos selecionar mais de uma coluna** por vez;

* **Não** pode trazer resultados duplicados;

```mysql
SELECT dept_no FROM departments UNION SELECT dept_no FROM dept_emp;
```

## Utilizando o UNION ALL

* O **UNION ALL** é utilizado para combinar de dois ou mais SELECTS;

* **As colunas precisam ter o mesmo nome**;

* Os resultados serão agregados em uma coluna só, porém **podemos selecionar mais de uma coluna** por vez;

* Pode trazer resultados duplicados!

```mysql
SELCT dept_no AS departamento FROM departments
UNION ALL SELECT dept_no FROM dept_emp;
```

## Agrupando dados com GROUP BY

* O **GROUP BY** serve para agruparmos colunas e checarmos quantidades de determinados elementos;

* Por ex: quantos programadores ou designers existem no nosso banco;

* Então agrupamos as colunas somando elas e temos o resultado de grupos;

Comando

``` mysql
SELECT gender, COUNT(gender) AS 'Qtd por Gêneros'
FROM employees
GROUP BY gender;
```

## Exercício 23

1. Agrupe os trabalhos por data de contratação, para ver se muitas pessoas foram contratadas no mesmo dia;

2. A coluna é hire_date;

comando

```mysql
SELECT hire_date, COUNT(hire_date) AS 'dt de Contratação'
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;
```

## Operador HAVING

* O **HAVING** é semelhante ao WHERE;

* Porém vamos utilizar eles com **aggregate functions(SUM,AVG,GROUP BY)**, pois o WHERE não pode ser utilizado nestes casos;

* Então sempre que estamos utilizando uma destas funções de agregação de dados, precisamos optar pelo HAVING;

Comando

```mysql
SELECT title, COUNT(title) AS 'Titulo'
FROM titles
GROUP BY title
HAVING COUNT(title) > 100000;
```

## Exercício 24

1. Agrupe novamente os trabalhadores por data de contratação;

2. Porém exiba as datas que tem menos ou 50 colaboradores contratados;

comando

```mysql
USE employees;

SELECT  hire_date, COUNT(hire_date) AS 'DATA_ DE CONTRATAÇÃO'
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) <= 50;
```

## Realizando uma Subquery

* **Subquery** é uma query dentro de outra query;

* Teremos mais comumente dois SELECT's;

* A Subquery em alguns casos **se parece muito com um JOIN**;

* Porém as vezes **precisamos de algo muito específico**, então fazer uma subconsulta pode se tonar mais prático do que um JOIN;

comando

```mysql
SELECT first_name,(
    SELECT sum(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees;
```

## Verificando dados com EXISTS

* O **EXISTS serve para checar se existe algum registro em alguma subquery;

* Desta maneira podemos retornar resultados, apenas se existir algum de fato;

``` mysql
SELECT emp_no,first_name,last_name,(
    SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
WHERE EXISTS (
    SELECT salary
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
    HAVING SUM(salary) > 1000000
);
```

## Utilizando o ANY

* O **ANY** vai retornar os resultados que recebem TRUEM da Subquery;

* Por meio de uma subquery receberemos apenas os resultados que condizem a uma condição;

* Ou seja: se queremos os nomes de quem ganha mais de 150000, só receberemos nomes se alguém ganhar mais que 150000;

Comando

```mysql
SELECT first_name
FROM employees
WHERE emp_no = ANY  (
    SELECT emp_no
    FROM salaries
    WHERE salary > 150000
);
```

## Comentários

* Os **comentários** são utilizados por duas razões;

* Escrever instruções do que o código executa;

* Ou impedir a execução de um código, pois **o interpretador ignora código comentado**;

* Para comentários em uma linha utilizamos o símbolo: **--**
Comando:

```comentario mysql
-- Seleciona todos os nomes de funcionarios
SELECT first_name From employees;
```

## Comentários com múltiplas linhas

* Os comentários de SQL também podem ser **escritos em várias linhas**;

* A sintaxe é:**/* algum txto*/**;

* Onde esta maneira também funciona para uma linha somente;

## Exercício 25

1. Crie uma tabela posts;

2. Comente cada uma das ações que vai fazer na tabella, ex: cada coluna;

3. Você precisa inserir colunas como: id, titulo, corpo_do_post e tags;

### Fim
