# O que são as Stored Procedures?

* **Uma query** que pode se utilizada;

* O recurso se assemelha a funções de linguagens de programação;

* Pode receber **parâmetros**;

* Há a necessidade do uso de um recurso chamado **DELIMETERS**;

* Para delimitar quando inicia e finaliza a procedure;

## Alterando o Delimiter

* Normalmente utilizamos o delimitador o **";"**

* **Cada final de query adicionamos**, para que o MySQL entenda o fim da query;

* Para utilizar procedures precisamos **modificar o delimiter padrão**;

* Vamos ver na prática!

``` mysql
USE employees;
 
DELIMITER //

select * FROM salaries//

```

Demilitador // ou $$

## Criando uma procedures

* Além de alterar o Delimiter temos que utilizar outros recursos;

* **BEGIN**: inicia a procedure;

* **END**: finaliza a procedure;

* E claro: **criar a query** que será repetida;

* Podemos chamar a procedure com **CALL**

* Vamos ver na prática!

``` mysql

USE employees;

DELIMITER //

CREATE PROCEDURE fullName()
BEGIN
    SELECT CONCAT(first_name, " ", last_name) AS full_name FROM employees;

END//

CALL fullName()

```

## Resgatando todas as Procedures

* Podemos **checar as procedures** que estão criadas no nosso sistemas;

* O comando é **SHOW PROCEDURE STATUS**

* Ele exibe alguns **detalhes importantes** sobre nossaas procedures;

* Vamos ver na prática!

``` mysql
SHOW PROCEDURE STATUS

```

## Removendo Procedures

* Podemos também **excluir procedures** do sistema;

* O comando é: **DROP PROCEDURE<nome_pro>**

* Depois da execução a mesma não estará mais disponíveis;

* Vamos ver na prática!

``` mysql
DROP PROCEDURE fullName
```

## Extraindo mais detalhes de uma Procedure

* Podemos analisar como uma procedure foi criada, ou seja , **a query base** dela;

* O comando é: **SHOW CREATE PROCEDURE <nome_procedure>**

* Vamos ver na prática!

```mysql

SHOW CREATE PROCEDURE fullName;

```

## Criando uma Procedure mais complexa 

```mysql
USE employees;

DELIMITER //

CREATE PROCEDURE employeesNameAndSalaries()
BEGIN
    SELECT ep.first_name,sa.salary FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no;
END//

CALL employeesNameAndSalaries()


SHOW PROCEDURE STATUS

SHOW CREATE PROCEDURE employeesNameAndSalaries;

```

## Procedure com Parâmetros

* Precisamos **Colocar os parâmetros após o nome da Procedure**, como se fossem parâmetros de função;

* **Definimos o seu tipo** também (VARCHAR, INT e etc);

* Na hora de chamar a procedure, precisamos **passar o valor do parâmetros**;

* Isso deixa as **procedures dinâmicas**;

* Vamos na prática!

``` mysql
# Procedure com parâmetro, que receba os salarios mais altos


DELIMITER//

CREATE PROCEDURE employeesWithHighSalary(
    IN highSalary INT
)
BEGIN
    SELECT ep.first_name,sa.salary FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no
    WHERE sa.salary > 60000;
END//


SHOW PROCEDURE STATUS;

```
