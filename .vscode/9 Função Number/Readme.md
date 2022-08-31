# Função Number

## CEIL

* A função **CEIL** arredonda números com casas decimais para cima;

* Ou seja: 25.8 > 26;

* Vamos utilizar a apenas o número/coluna como argumento:

```exemplo
CEIL(<numero>)
```

Comando

```mysql
SELECT amount, CEIL(amount) AS arredondado FROM payment;
```

## Número de ocorrências com COUNT

### COUNT

* **Obs:** Já utilizamos COUNT antes!

* A função **COUNT** conta o número de ocorrências de uma determinada coluna;

* Exemplo:

COUNT(<coluna_>)

* Ideal para saber o número de registros em uma tabela;

Comando

```mysql
SELECT COUNT(*) FROM payment;
```

## Exercício 31

1. Obtenha a quantidade de clientes cadastrados;

2. Estão na tabelal customer;

Comando

```mysql
SELECT COUNT(customer_id) AS contagem_de_Cliente FROM customer;
```

## Arredondando para baixo com FLOOR

### FLOOR

* A função **FLOOR** arredonda números com casas decimais para baixo;

* Ou seja: 25.8 > 25;

* Vamos utilizar a apenas o número/coluna como argumento:

* **FLOOR(<numero_>)**

Comando

```floor
SELECT amount, CEIL(amount) AS para_cima,
FLOOR(amount) AS para_baixo
FROM payment;
```

## Maior número com MAX

### MAX

* A função **MAX** retorna o maior valor de uma coluna;

* Apenas passamos a coluna com argumento;

* Exemplo:

* **MAX(<coluna_>)**

Comando

```mysql
SELECT MAX(amount) AS maior_pagamento FROM payment;
```

## Menor número com MIN

* A função **MIN** retorna o menor valor de uma coluna;

* Apenas passamos a coluna como argumento;

* Exemplo:

* **MIN(<coluna_>)**

Comando

```mysql
SELECT MAX(idade) AS maior_idade MIN(idade) AS menor_idade FROM funcionarios;
```

## Exercício 32

1. Encontre o maior salário e o menor salário da tabela salaries;

2. Esta tabela está no banco employees;

Comando

```mysql
USE employees;

SELECT MAX(salary) AS maior_Salario, MIN(salary) AS menor_salario FROM salaries
```

## Somando valores com SUM

* A função **SUM** retorna a soma dos valores de uma coluna;

* Apenas passamos a coluna como argumento;

* Exemplo:

* **SUM(<coluna_>)**

Comando

```mysql
USE sakila;
SELECT SUM(amount) AS soma_pagamentos FROM playment;
```

FIM!!
