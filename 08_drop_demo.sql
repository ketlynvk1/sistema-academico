-- Parte 11: DROP
-- Demonstração segura em um banco de teste.
-- NÃO substitua sistema_teste_drop por sistema_academico.

CREATE DATABASE sistema_teste_drop;
USE sistema_teste_drop;

CREATE TABLE tabela_teste (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

DROP TABLE tabela_teste;
DROP DATABASE sistema_teste_drop;
