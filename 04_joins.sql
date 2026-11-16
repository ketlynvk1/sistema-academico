-- Parte 6: JOINs
USE sistema_academico;

-- 1. INNER JOIN: aluno e matrícula
SELECT aluno.nome AS nome_aluno, matricula.data_matricula, matricula.status
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno;

-- 2. INNER JOIN: aluno, matrícula e turma
SELECT aluno.nome AS nome_aluno, turma.nome_turma, turma.ano_letivo, matricula.status
FROM matricula
INNER JOIN aluno ON matricula.id_aluno = aluno.id_aluno
INNER JOIN turma ON matricula.id_turma = turma.id_turma;

-- 3. INNER JOIN: professor e disciplina
SELECT professor.nome AS nome_professor,
       disciplina.nome AS disciplina,
       disciplina.carga_horaria
FROM professor
INNER JOIN disciplina ON professor.id_professor = disciplina.id_professor;

-- 4. LEFT JOIN: todos os alunos e suas notas, quando existirem
SELECT aluno.nome AS nome_aluno,
       nota.valor AS nota,
       nota.bimestre,
       nota.data_avaliacao
FROM aluno
LEFT JOIN nota ON aluno.id_aluno = nota.id_aluno;
