# FUNÇÕES DE DATAS

## ADDDATE

* A função **ADDDATE** adiciona ou remove uma quantidade horas, dias, mees ou anos a uma data;

* Utilizamos da seguinte forma:

``` mysql
ADDDATE(<coluna>,<data para adicionar>)
```

* Desta forma teremos uma nova data na seleção dos dados;

Comando

```mysql
SELECT last_update, ADDDATE(last_update, "5 DAYS"),
ADDDATE(last_update, INTERVAL 2 MONTH),
ADDDATE(last_update, INTERVAL -3 YEAR)
FROM actor;
```

## Diferença de datas com DATEDIFF

* A função **DATEDIFF** calcula a diferença de duas datas;

* O valor é informado em dias;

* Vamos utilizar desta maneira:

```mysql
DATEDIFF(<data1>, <data2>)
```

* Desta maneira será exibido o valor da diferença;

Comando

```mysql
SELECT DATEDIFF(ADDDATE(last_update, "1 DAY"),last_update) FROM actor;
SELECT DATEDIFF(ADDDATE(last_update, INTERVAL 1 MONTH),last_update) FROM actor;
```

## Adicionando tempo com ADDTIME

* A função **ADDTIME** adiciona ou remove um tempo a uma data;

* Podemos utilizar o formato: yyyy-mm-dd hh:mm:ss;

* Exemplo:

```mysql
ADDTIME(<coluna>, <tempo>);
```

* Desta maneira a data final será modificada;

Comando

```mysql
SELECT *, ADDTIME(last_update,"5 03:00:00")
FROM actor 
WHERE actor_id > 20;
```

## Formatando datas com DATE_FROMAT

* A função **DATEFORMAT** formata uma data com um padrão indicado;

* Exemplo de utilização:

```example
DATE_FORMAT(<data>,<formato>)
```

* Se utilizamos %Y, recebemos o ano completo, por exemplo;

Comando

```comando
SELECT DATE_FORMAT(last_update,"%Y") AS ano,
DATA_FORMAT(last_update, "%d/%m/%Y"),
last_update
FROM actor;
```

## Identificar dia da data com DAY

* A função **DAY** retorna o dia da data utilizada na função;

* Exemplo:

```example
DAY(<data>)
```

* Desta maneira teremos o número do dia, como: 15;

Comando

```mysql
SELECT last_update, DAY(last_update,) AS dia, 
DAY(ADDTIME(last_update, "5 00:00:00"))
FROM actor;
```

## Identificar o dia da semana com DAYOFWEEK

* A função **DAYOFWEEK** retorna o dia da semana de uma determinada data;

* Exemplo:

```example
DAYOFWEEK(<data>)
```

* Iniciando de domingo com 1;

Comando

``` mysql
SELECT last_update, DAYOFWEEK(last_update),
DAYOFWEEK(ADDDATE(last_update, " 3 DAYS"))
FROM actor;
```

## Identificado dia do ano com DAYOFYEAR

* A função **DAYOFYEAR** retorna o dia do ano de uma determinanda data;

* Exemplo:

```Examplo
DAYOFYEAR(<data>)
```

* O retorno é 1 a 365;

Comando

```mysql
SELECT last_update,DAYOFYEAR(last_update), DAYOFYEAR(ADDDATE(last_update, "5 MONTH")) FROM actor;
```

## Idetificando semana do ano com WEEKOFYEAR

* A função **WEEKOFYEAR** retorna a semana do ano de uma determinada data;

* Exemplo:

```example
WEEKOFYEAR(<data>)
```

* O retorno é de 1 a 12;

Comando

```mysql
SELECT last_update, WEEKOFYEAR(last_update) AS semana,
last_update, WEEKOFYEAR(ADDDATE(last_update, INTERVAL 4 MONTH))
FROM actor;
```

## Idetificando mês da data com MONTH

* A função **MONTH** extrai o mês de uma data;

* Exemplo:

```example
MONTH(<data>)
```

* O retorno é de 1 a 12;

Comando

```mysql
SELECT last_update, MONTH(last_update),
MONTH(ADDDATE(last_update, INTERVAL 5 MONTH))
FROM actor;
```

## Identificando o ano da data com YEAR

* A função **YEAR** extrai o ano de uma determinada data;

* Exemplo:

```example
YEAR(<data>)
```

* Assim obteremos de maneira fácil o ano;

Comando

```mysql
SELECT last_update, YEAR(last_update),
YEAR(ADDDATE(last_update, INTERVAL 25 YEAR))
FROM actor;
```

Fim!!
