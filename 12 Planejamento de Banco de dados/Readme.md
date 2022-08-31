# Planejamento de banco de dados

## A importancia do DB design

* Aplicações que tem o desenho do banco já iniciam com uma **documentação**;

* E ainda uma **organização prévia**, que dita as regras do sistema  como ele funciona.

* O **relacionamento entre entidades** também é previsto;

* **Erros podem ser resolvidos antes de acontecerem no código** ou ainda antecipação de problemas da própria regra de negócios;

## Análise dos dados

* É o **planejamento** e a **definição do sistema**;

* Onde **como o sistema deve funcionar** é apresentado ou uma conversa com quem precisa do sistema é feita;

* Com base nestes dados e descrições vamos **planejar o banco de dados**;

* Temos um ponto de contato com a parte não técnica e técnica;

* Aqui também podem ser **relatados dificuldades técnicas** e criam-se alternativas para possíveis problemas;

## Normalização de um banco de dados

* É dividida em **dirversos níveis**, algumas das premissas são:

* Colocar **chave primária** na tabela;

* 1FN - Colunas guardam um único valor(**atomicidade**);

* 2FN - Colunas que não pertecem ao tópico central da tabela, **devem virar uma outra tabela**;

* 3FN - Deixar no banco de dados **apenas valores que não são dependentes de outros**, devem ir p/outras camadas a responsabibidade;

## Diagrama de entidades relacionais (ER)

* É um quandro onde se **define as tabelas e as relações entre si**;

* Deixando o banco de dados **visual** a todos da equipe;

* Utilizando também para **dar nome as tabelas e colunas**;

* Além de também os **tipos de dados** da mesma;

* Com este diagrama pronto o desenolvimento da aplicação e o entendimento do projeto torna-se mais rápido;

## Implementação

* Seguindo todas estas instruções **vamos planejar do zero um banco de dados**;

* A parti da análise de requisitos e entendimento de uma solicitação de desenvolvimento de sistema;

* Mãos à obra!

