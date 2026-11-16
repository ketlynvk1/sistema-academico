-- PARTE 4: ALTERAÇÃO DA ESTRUTURA (ALTER TABLE)
-- Adiciona, modifica, renomeia e remove colunas das tabelas.

ALTER TABLE Aluno 
ADD COLUMN email VARCHAR(120) NULL;

ALTER TABLE Aluno
MODIFY COLUMN endereco VARCHAR(200) NOT NULL;

ALTER TABLE Turma
CHANGE COLUMN ano_letivo ano_letivo_inicio YEAR NOT NULL;

ALTER TABLE Aluno DROP COLUMN email;
