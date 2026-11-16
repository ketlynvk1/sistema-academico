-- Parte 10: Transações
USE sistema_academico;

-- Demonstração de ROLLBACK: a alteração será desfeita.
START TRANSACTION;
UPDATE aluno
SET endereco = 'Endereco temporario de teste'
WHERE id_aluno = 2;
ROLLBACK;

-- Demonstração de COMMIT: a alteração será confirmada.
START TRANSACTION;
UPDATE aluno
SET endereco = 'Rua Brasil, 50'
WHERE id_aluno = 2;
COMMIT;

-- Conferir o valor confirmado
SELECT id_aluno, nome, endereco
FROM aluno
WHERE id_aluno = 2;
