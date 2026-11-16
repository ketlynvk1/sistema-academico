-- Parte 9: Uso de JSON
USE sistema_academico;

-- Criação da tabela complementar com coluna JSON
CREATE TABLE IF NOT EXISTS dados_complementares_aluno (
    id_dados INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL UNIQUE,
    informacoes JSON NOT NULL,
    CONSTRAINT fk_dados_aluno FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
) ENGINE=InnoDB;

-- INSERT de dados JSON. Execute uma única vez.
INSERT INTO dados_complementares_aluno (id_aluno, informacoes) VALUES
(1, '{"email":"ana.clara@email.com","telefone":"21990000001","cidade":"Rio de Janeiro"}'),
(2, '{"email":"bruno@email.com","telefone":"21990000002","cidade":"Niteroi"}'),
(3, '{"email":"camila@email.com","telefone":"21990000003","cidade":"Duque de Caxias"}');

-- SELECT com JSON_EXTRACT
SELECT id_aluno,
       JSON_UNQUOTE(JSON_EXTRACT(informacoes, '$.email')) AS email,
       JSON_UNQUOTE(JSON_EXTRACT(informacoes, '$.telefone')) AS telefone,
       JSON_UNQUOTE(JSON_EXTRACT(informacoes, '$.cidade')) AS cidade
FROM dados_complementares_aluno;

-- UPDATE com JSON_SET
UPDATE dados_complementares_aluno
SET informacoes = JSON_SET(informacoes, '$.cidade', 'São Gonçalo')
WHERE id_aluno = 1;

-- Conferência da atualização
SELECT id_aluno,
       JSON_UNQUOTE(JSON_EXTRACT(informacoes, '$.cidade')) AS cidade
FROM dados_complementares_aluno
WHERE id_aluno = 1;
