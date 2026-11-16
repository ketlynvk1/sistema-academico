-- PARTE 3: CONSULTAS E RELACIONAMENTOS (JOIN)
-- Os JOINs permitem consultar informações relacionadas
-- que estão armazenadas em tabelas diferentes.

-- 1) INNER JOIN
SELECT a.nome AS aluno, m.data_matricula, m.status, t.nome_turma
FROM Aluno a
INNER JOIN Matricula m ON m.id_aluno = a.id_aluno
INNER JOIN Turma t ON t.id_turma = m.id_turma;

-- 2) LEFT JOIN
SELECT a.nome AS aluno, n.valor, n.bimestre
FROM Aluno a
LEFT JOIN Nota n ON n.id_aluno = a.id_aluno
ORDER BY a.nome;

-- 3) JOIN
SELECT d.nome AS disciplina, d.carga_horaria,
       p.nome AS professor, p.especialidade
FROM Disciplina d
INNER JOIN Professor p ON p.id_professor = d.id_professor;

-- 4) JOIN com três tabelas
SELECT a.nome AS aluno, d.nome AS disciplina,
       n.valor, n.bimestre, n.data_avaliacao
FROM Nota n
INNER JOIN Aluno a ON a.id_aluno = n.id_aluno
INNER JOIN Disciplina d ON d.id_disciplina = n.id_disciplina
ORDER BY a.nome;
