# Avançando em SELECT

## Instalando um banco de dados

* Vamos instalar um banco maior para trabalhar nesta seção;

* Os dados a mais ajudarão na imersão dos comandos novos;

* Utilizaremos este banco:<https://github.com/datacharmer/test_db>;

* Vamos instalar juntos!

* Comandos;

```mysql
sudo mysql -u root -p

CREATE DATABASE employees;

USE employees;

source employees.sql
```

## A importância do SELECT

* A maior das queries em um banco de dados **são de consulta**;

* E é também o comando com **mais variações**;

* Para receber detalhados resultados, precisamos aprender todo o poder do SELECT;

* Desta maneira criaremos **filtro avançados** e conseguiremos atingir o resultado desejado facilmente;

## Operadores

* **Comparação** (>,<,>=,<=,=): estes operadores vão filtrar dados baseados nas comparações;

* **BETWEEN**: Seleção entre um intervalo;

* **LIKE**: Seleção por meio de algum padrão;

* **IN**: Seleção entre um conjunto de valores específicos;

## Cláusula WHERE

* O **WHERE** será utilizado junto dos operadores vistos da última aula;

* Assim conseguimos **filtrar dos dados de maneira objetiva**;

* Exemplo: WHERE id =10;

* Receberemos apenas o resultado onde o id é 10;

### **Exemplo**

```exemplo
SELECT * FROM employees.salaries WHERE  salary <= 6000;
```

## **Exercício 14**

1. Selecione na tabeka titles todos as colunas, porém apenas as que emp_no for maior ou igual a 11500;

2. Mãos à obra;

* Comando;

```comando
SELECT * FROM titles WHERE emp_no >= 115000;
```

## Utilizando o DISTINCT

* O **DISTINCT** vai selecionar apenas as variações de valores;

* Por exemplo: temos 10 cidades diferentes de usuários no sistema, só receberemos 10 resultados;

* O comando é:

```comando
SELECT DISTINCT <coluna> FROM <tabela>;

SELECT DISTINCT gender FROM employees;
```

* Volta apenas os valore diferentes da coluna selecionada;

## Operadores lógicos

* Podemos **combinar a cláusula WHERE** com operadores lógicos como:

* **AND**: recebe duas condições, só volta os resultados que atendem as duas;

* **OR**: recebe duas condições, volta os resultados que antendem pelo menos uma;

* **NOT**: Invertemos a cláusula;

* Exemplo: WHERE id > 10 OR salario > 5000;

## Utilizando o AND

* Todos estes operadores lógicos **são muiotos utilizados na programação**;

* Com o **AND** temoos um filtro duplo para resultados;

* Por Exemplo: WHERE salario > 1000 AND cargo = "programador";

* No caso acima, apenas **programadores com salário maior que 1000** serão retornados no nosso SELECT;

## Utilizando o OR

* O **OR** tem a possibilidade de retornar qualquer uma das condições impostas;

* Exemplo: WHERE salario > 5000 || profissao = 'programador';

* Neste caso, teremos **programadores com salários menores que 5000 e também outros tipos de cargos com salários acima de 5000**;

```mysql
SELECT * FROM titles WHERE title = "Senior Engineer" || title = "Staff";

SELECT * FROM titles WHERE title = "Senior Engineer" || title = "Staff" || emp_no > 12500 ORDER BY emp_no DESC;

```

## Utilizando o NOT

* O  **NOT** Inverte uma clásula;

* Exemplo: WHERE NOT profissao = 'programador';

* Ou seja, teremos todos os dados retornados, **menos os que são de programadores**;

* Pode ser utilizado neste sentido de exclusão de dados;

```mysql
SELECT * FROM titles WHERE NOT title = "Staff";

SELECT * FROM titles WHERE NOT title = "Staff" AND NOT title = "Senior Engineer";
```

todos os cargos Staff não aparece nesse comando;

## Utilizando a ORDER BY

* A **ORDER BY** é uma instrução para ordenação de resultados;

* Podemos utilizar de forma ascendente(**ASC**);

* E descendente(**DESC**);

* Utilizamos **após o WHERE**,se tiver;

* E é **baseada em algum coluna**, exemplo:

* ORDER BY salario ASC;

Exemplo

```mysql
SELECT * FROM salaries ORDER BY salary DESC;

SELECT * FROM salaries ORDER BY from_date DESC;

SELECT * FROM salaries ORDER BY from_date ASC;
```

## EXERCÍCIO 15

1. Selecione na tabela titles todos as colunas, porém ordene os títulos por ordem descendente;

2. Mãos à obra!!

```mysql
SELECT * FROM titles ORDER BY title DESC;

```

## Utilizando a LIMIT

* A instrução **LIMIT** é outra forma interessante de **limitar os resultados e tornar a consulta mais rápida**;

* Podemos especificar o número de resultados retornados, exemplo:

* LIMIT 15;

* Apenas os 15 primeiros resultados serão exibidos;

* **Podemos unir com WHERE** e outras instruções;

EXEMPLOS:

```MYSQL
SELECT * FROM salaries ORDER BY salary LIMIT 10;

SELECT * FROM employees ORDER BY birth_date LIMIT 15;

SELECT * FROM employees ORDER BY hire_date DESC LIMIT 10;
```

## Exercício 16

1. Selecione na tabela departments todos as colunas, porém limite a 5 resultados e ordene de forma ascendente;

2. A ordem deve ser pela coluna de title;

3. Mãos à obra!

```mysql
SELECT * FROM titles ORDER BY title LIMIT 5;

SELECT * FROM departments ORDER BY dept_name ASC LIMIT 5;

SELECT * FROM departments ORDER BY dept_no ASC LIMIT 5;
```

## Função no SQL

* **Função** são blocos de códigos reaproveitáveis;

* Utilizadas para **extrair resultados que demandam muita programação**;

* Temos diversas no SQL, que vão nos ajudar muito nas nossas consultas;

* Exemplo: a função **MAX** retorna o maior valor, de uma determinada coluna;

* Algo que poderia ser atingida por: SELECT coluna FROM tabela ORDER BY coluna DESC LIMIT 1;

## Função min

* A função **MIN** vai retornar o menor valor de uma coluna específica;

* Veja um exemplo:

* **SELECT MIN(<coluna_nome>) FROM <nome_table>;**;

* Desta maneira vamos receber apenas um resultado, o de menor valor;

Exemplo:

```mysql
SELECT MIN(salary) AS Salary FROM salaries;
```

## Função MAX

* A função **MAX** vai retornar o maior valor de uma coluna específica;

* Veja um exemplo:

* **SELECT MAX(<nome_coluna>) FROM <nome_table>;**

* Desta maneira vamos receber apenas um resultados, o de maior valor;

```mysql
SELECT MAX(salary) AS Salary FROM salaries;
```

## Função COUNT

* A função **COUNT** vai retornar o número de valores que combinam com algum critério;

* Podemos **utilizar com o WHERE**;

* Exemplo: **SELECT COUNT(*) FROM salaries WHERE salary > 100000;**

* Assim teremos a quantidade de salários maior que 100k;

```mysql
SELECT COUNT(*) FROM salaries WHERE salary > 100000;

SELECT COUNT(*) AS Homem FROM employees WHERE gender = "M";

SELECT COUNT(*) AS Mulheres FROM employees WHERE gender = "F";
```

## Exercício 17

1. Faça um SELECT que conte o número de registro na tabela departments;

2.Mãos à obra!

Comando

```mysql
SELECT COUNT(*) AS Registro FROM departments;
```

## Função AVG

* A função **AVG** vai retornar a média de uma determinada coluna;

* AVG vem de average(média);

* Podemos utilizar da seguinte maneira;

* **SELECT AVG(salary) FROM salaries;**

* Temos assim a média de salários;

```mysql

SELECT AVG(salary) FROM salaries;

SELECT AVG(salary) AS Media_Salarial FROM salaries WHERE salary > 100000;
```

## Função Sum

* A função **SUM** vai retornar a soma de todos os valores de uma coluna;

* Podemos utilizar da seguinte maneira:

* **SELECT SUM(salary) FROM salaries;**

* Assim teremos a soma de todos os salários;

comando

```mysql
SELECT SUM(salary) FROM salaries;
```

Ele não dar a soma usando o ORDER BY , pois ele vai somar tudo.

ele consegue somar usando as instruções de WHERE

## Operador LIKE

* O **LIKE** é utilizado sempre em conjunto do WHERE;

* Ele tem a premissa de fltrar ainda mais nosso resultados;

* **SELECT * FROM employees WHERE first_name LIKE '%ber%';**

* Desta forma teremos a seleção de todos os nomes que contém ber, não importa se for no fim ou começo;

```mysql
SELECT * FROM employees WHERE first_name LIKE '%ber%';
SELECT * FROM employees WHERE first_name LIKE '%ber%' OR gender = 'F';
```

## Exercício 18

1. Faça um SELECT na tabela titles;

2. Selecione todos os títulos que tenham Engineer na coluna;

3. Mãos à obra!!

comando

```mysql
SELECT * FROM titles WHERE title LIKE '%Engineer%';
```

## Selecionando itens de uma lista com IN

* O **IN** vai fazer uma **busca por um conjunto de valores**;

* Exemplos:

* **SELECT * FROM dep_emp WHERE dept_no IN('d004','d005','d006');**

* Desta forma selecionamos  os registros apenas dos departamentos d004, d005,d006;

comando

```mysql
SELECT * FROM dept_emp WHERE  dept_no IN('d004','d005,'d006');
```

## Exercício 19

1. Na tabela employee faça um SELECT de todos os registros que contenham no sobrenome;

2. Facello e Peac

3. Utilize o IN;

4. Mãos à obra!

comando

```mysql
SELECT * FROM employee WHERE last_name IN('Facello', 'Peac');
```

## Selecionando faixa de valores com BETWEEN

* O **BETWEEN** é parecido com o IN, mas ele vai receber uma **faixa de valores**;

* E o resultado será retornado baseado nos registros dentro da faixa, veja:

* **SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd001' AND 'd008';**

* Neste exemplo retornamos os departamentos do 1 ao 8;

* O **AND** é utilizado para  determinar o intervalo;

comando

```mysql
SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd003' AND 'd005';

SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd003' AND 'd005' ORDER BY dept_no DESC;
```

## Exercício 20

1. Na tabela de salário faça um SELECT;

2. Selecione os salarios em uma faixa de 125000 a 175000;

3. Utilize o BETWEEN;

4. Mãos à obra!

COMANDO

```mysql
SELECT * FROM salaries WHERE salary BETWEEN 125000 AND 175000;
```

## Criando ALIAS para colunas

* O **ALIAS** pode servir para renomear uma coluna com nome não objetivo ou coluna originadas de função, por exemplo:

* **SELECT SUM(salary) AS SOMA_SALARIO FROM salaries;**

* Agora a soma dos salarios tem o nome de soma_salario, o que é muito mais objetivo!

* O **AS** é utilizado para determinar como a coluna deve se chamar;

### FIM
