-- Parte 7: ALTER TABLE
-- Execute os comandos de alteração em sequência. A coluna email é criada,
-- modificada, renomeada e removida ao longo do exercício.
USE sistema_academico;

-- ADD
ALTER TABLE aluno ADD COLUMN email VARCHAR(100) NULL;

-- MODIFY
ALTER TABLE aluno MODIFY COLUMN email VARCHAR(150) NULL;

-- CHANGE
ALTER TABLE aluno CHANGE COLUMN email email_contato VARCHAR(150) NULL;

-- DROP COLUMN
ALTER TABLE aluno DROP COLUMN email_contato;

-- Parte 8: UPDATE e DELETE
-- UPDATE realizado no projeto
UPDATE aluno
SET endereco = 'Rua das Flores, 125'
WHERE id_aluno = 1;

-- Outra atualização confirmada com COMMIT
UPDATE aluno
SET endereco = 'Rua Brasil, 50'
WHERE id_aluno = 2;

-- Para demonstrar DELETE com segurança, primeiro insira uma linha temporária:
INSERT INTO nota (id_aluno, id_disciplina, valor, bimestre, data_avaliacao)
VALUES (1, 1, 0.00, 4, '2026-11-16');

-- Depois exclua somente essa linha temporária:
DELETE FROM nota
WHERE id_aluno = 1
  AND id_disciplina = 1
  AND valor = 0.00
  AND bimestre = 4
  AND data_avaliacao = '2026-11-16';
