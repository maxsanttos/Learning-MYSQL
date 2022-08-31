# Instalação do Sakila

* **Obs:** faça o download dos arquivos do curso!

* Para esta seção amos importar um outro banco, o **Sakila**;

* Vamos precisar conectar ao mysql com: **mysql -u root**

* Depois **criar o banco de dados sakila e aplicar o USE**;

* E por fim utilizar o source em dois arquivos, nesta ordem: sakila-schema.sql e depois sakila-data.sql

comando

```mysql

// entrando no mysql
sudo mysql -u root -p

// criando o banco
CREATE DATABASE sakila;

//usando o banco
USE sakila;

// inserindo as tabelas e dados
source sakila-schema.sql
source sakila-data.sql

// vendo as tabelas
SHOW TABLES;
```

## O que são funções?

* As **funções** são bocos de códigos já definidos que podem ser reutilizados;

* Assim como a maioria das linguagens de programação já possuem funções prontas, o SQL também;

* Elas nos ajudam a **atingir resultados de forma simples**, que com apenas queries seriam atingidos de forma complicada;

* E também permitem a **reutilização** das mesmas;

## Quantidade de caracteres com CHAR_LENGTH

* A função **CHAR_LENGTH** nos retorna o número de caracteres de uma string de uma determinada coluna;

* Ela leve um argumento que é a coluna que vamos avaliar;

* Exemplo:

``` mysql
CHAR_LENGTH(<nome_da_coluna>)
```

Comando

```mysql
SELECT first_name, CHAR_LENGTH(first_name) AS qtd_ caracteres , last_name, CHAR_LENGTH(last_name) Qtad_Chars ASFROM actor;
```

## Exercício 26

1. Selecione da Tabela address:

2. A coluna id, address, e aplique a função de CHAR_LENGTH em postalcode

3. Ordene os dados de forma descendete pelo id;

Comando

```mysql
SELECT address_id,address,postal_code, char_length(postal_code) AS qtd_chars from address order by address_id DESC;
```

## Unindo strings com CONCAT

### CONCAT

* A função **CONCAT** concatena duas ou mais strings;

* Concatenar significa **unir strings**;

* Veja um exemplo:**CONCAT("MYSQL","é","bom")

* Aqui concebemos uma frase, mas podemos utilizar com colunas, o que deixa as coisas mais interessantes!

COMANDO

```Mysql
SELECT CONCAT(nome, "tem",idade,"anos de idade") AS nome_e_idade FROM funcionarios;
```

## Exercício 27

1. Selecione na tabela actor o id;

2. E concetene nome e sobrenome dos atores;

3. Coloque um espaço entre o nome e sobrenome

Comando

```mysql
SELECT actor_id ,CONCAT("Nome:",first_name," ","Sobrenome:",last_name) AS nome_e_sobrenome FROM actor;
```

## Utilizando a CONCAT_WS

### CONCAT_WS

* A função **CONCAT_WS** concatena duas ou mais strings, porém com um separador comum;

* O primeiro argumento é um separador;

* Veja um exemplo: **CONCAT_WS("-","MYSQL","é","bom")

* Os resultados seção espaçados pelo separador definido;

Comado

```mysql
USE empresa;

SELECT CONCAT_WS(",",id,nome,idade) AS separador_por_virgula FROM funcionario;
```

## Formatando strings com FORMANT

* A função **FORMAT** vai formatar um número com um número de casas determinado por argumentos;

* Além disso, em alguns casos **pode até arredondar o número**:

* Exemplo: FORMAT(numero,2)

* Formata o número com 2 casas decimais;

comando

```mysql
USE sakila;

SELECT customer_id,amount,FORMAT(amount,2) FROM payment;
```

## Verificando stings com INSTR

* A função **INSTR** retorna a posição do caractere ou string que estamos buscando em uma outra string;

* Exemplo:**INSTR(<string_nome>,'a');**

* Retorna a posição da letra a na string alvo;

Comando

```mysql
SELECT email,INSTR(email,"org") FROM customer;
```

## Mundando o case de string com LCASE

* A função **LCASE** transforma todo o texto retornado para **lower case**, ou seja, letras minúsculas;

* Exemplo: LCASE('ALGUM TEXTO')

Comando

```mysql
USE sakila;

SELECT first_name, last_name,LCASE(COUNT(first_name, "  " , last_name)) AS nome_completo FROM customer;
```

## Extraindo texto com LEFT

### LEFT

* A função **LEFT** extrai uma quantidade de caracteres de uma string;

* A extração acontece da **esquerda para direita**;

* E a quantidade é passada por parâmetro

* Exemplo:

* **LEFT(<string_text>,5)**

Comando

```mysql
SELECT title FROM film, LEFT(title,8) where film_id = 1;
```

## Exercício 28

1.Selecione na tabela address as colunas:

2.id e last_update:

3.Em last_update aplique a função LEFT e mostre apenas a data;

4.Aplique um alias em last_update para data;

5.TRaga apenas ids maiores que 150

comando

```mysql
SELECT address_id,Left(last_update,10) AS "DATA" FROM address where address_id > 150;
```

## Trocando palavras em strings com REPLACE

### REPLACE

* A função **REPLACE** troca alguma parte de uma string por outra enviada por parâmetro;

* Exemplo:

* **REPLACE(<texte_na>,<artigo_n>,<novo_n>)**

* Desta forma podemos fazer manipulações nos valores retornados;

comando

```mysql
SELECT REPLACE(name,"Action", "Action & Adventure")  AS name FROM category;
```

## Exercício 29

* Selecione o usuário que tem o sobrenome SMITH da tabela customer;

* Mude o nome para Mary e o sobrenome para Smith, vamos remover a caixa alta de todas as letras, deixar só nas iniciais;

* Crie alias para as duas colunas, que serão:nome e sobrenome;

Comando

```mysql
SELECT REPLACE(frist_name,"MARY","Mary",AS nome REPLACE(last_name,"SMITH",Smath") AS sobrenome
FROM customer
WHERE last_name ="SMITH"
```

## RIGHT

* A função **RIGHT** extrai caracteres da direita para esquerda;

* O número de cara cteres é determinado pelo argumento da função;

* **RIGHT(<texto_>, 10)**

* Neste caso teremos uma extração de 10 caracteres da direita para esquerda;

Comandos

```mysql
SELECT RIGHT(last_update,8) AS horario FROM category;
```

## SUBSTR

* A função **SUBSTR** extrai uma string a partir de dois índices, início e fim;

* Os índices são passados via argumentos;

* Exemplo;

* **SUBSTR(<text_>,<inicio_>,<fim_>)

Comando

```mysql
SELECT SUBSTR(last_update,6,2) AS mês FROM actor;
```

## UCASE

* A função  **UCASE** vai transformar todas as letras em maiúsculas;

* É o contrario de LCASE;

* EXEMPLO:

* **UCASE(<string_>)**

Comando

```mysql
SELECT UCASE(description) FROM film ;
```

## Exercício 30

1. Selecione id e pais da tabela country;

2. Mude o nome dos países para letras maiúsculas;

Comando

```mysql
SELECT country_id, UCASE(county) AS Country FROM country;
```

Fim!!
