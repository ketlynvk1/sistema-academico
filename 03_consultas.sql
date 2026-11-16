-- Parte 5: Consultas SQL
USE sistema_academico;

-- SELECT
SELECT * FROM aluno;

-- WHERE
SELECT * FROM aluno WHERE id_aluno = 1;

-- ORDER BY
SELECT id_aluno, nome FROM aluno ORDER BY nome ASC;

-- LIKE
SELECT id_aluno, nome FROM aluno WHERE nome LIKE 'A%';

-- BETWEEN
SELECT id_aluno, nome, data_nascimento
FROM aluno
WHERE data_nascimento BETWEEN '2004-01-01' AND '2005-12-31';

-- IN
SELECT id_aluno, nome FROM aluno WHERE id_aluno IN (1, 3, 5, 7);

-- Conferência de quantidade de registros
SELECT 'ALUNO' AS tabela, COUNT(*) AS total FROM aluno
UNION ALL SELECT 'TURMA', COUNT(*) FROM turma
UNION ALL SELECT 'MATRICULA', COUNT(*) FROM matricula
UNION ALL SELECT 'PROFESSOR', COUNT(*) FROM professor
UNION ALL SELECT 'DISCIPLINA', COUNT(*) FROM disciplina
UNION ALL SELECT 'NOTA', COUNT(*) FROM nota;
