# Sistema Acadêmico — Projeto de Banco de Dados

Projeto acadêmico desenvolvido em MariaDB e administrado pelo HeidiSQL.

## Estrutura

- `01_estrutura.sql` — criação do banco e das tabelas relacionais.
- `02_inserir_dados.sql` — dados fictícios de exemplo (10 registros por tabela principal).
- `03_consultas.sql` — SELECT, WHERE, ORDER BY, LIKE, BETWEEN e IN.
- `04_joins.sql` — exemplos de INNER JOIN e LEFT JOIN.
- `05_alter_update_delete.sql` — ALTER TABLE, UPDATE e DELETE.
- `06_json.sql` — criação e manipulação de dados JSON.
- `07_transacoes.sql` — demonstrações de START TRANSACTION, ROLLBACK e COMMIT.
- `08_drop_demo.sql` — demonstração de DROP em banco de teste.

## Como utilizar

1. Instale o MariaDB e abra uma conexão local pelo HeidiSQL.
2. Abra os arquivos `.sql` no HeidiSQL ou em um editor de texto.
3. Para montar o projeto em um banco vazio, execute primeiro `01_estrutura.sql` e depois `02_inserir_dados.sql`.
4. Os demais arquivos documentam e demonstram os requisitos do trabalho. Alguns comandos modificam ou excluem dados; leia os comentários antes de executá-los.

## Atenção sobre o banco já criado

Os comandos deste repositório registram as etapas do projeto. Como o banco `sistema_academico` já foi criado e preenchido durante o desenvolvimento, **não execute novamente `02_inserir_dados.sql` nem os INSERTs do arquivo `06_json.sql` nesse mesmo banco**, pois isso pode duplicar dados ou gerar erro de chave única.

O arquivo `08_drop_demo.sql` apaga somente o banco de teste `sistema_teste_drop`. Não altere esse nome para `sistema_academico`.

## Observações

Os nomes, CPFs, telefones, e-mails e endereços utilizados são dados fictícios para fins acadêmicos.
