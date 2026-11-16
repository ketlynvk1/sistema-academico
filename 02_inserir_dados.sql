-- Dados fictícios para demonstração acadêmica.
-- Execute uma única vez em um banco recém-criado para evitar duplicidade.

USE sistema_academico;

INSERT INTO aluno (nome, data_nascimento, cpf, endereco) VALUES
('Ana Clara Souza', '2004-03-15', '10000000001', 'Rua das Flores, 125'),
('Bruno Oliveira', '2003-07-22', '10000000002', 'Rua Brasil, 50'),
('Camila Santos', '2005-01-10', '10000000003', 'Av. Central, 230'),
('Daniel Costa', '2004-11-05', '10000000004', 'Rua das Palmeiras, 80'),
('Eduarda Lima', '2003-09-18', '10000000005', 'Rua A, 150'),
('Felipe Martins', '2005-05-27', '10000000006', 'Rua B, 90'),
('Gabriela Alves', '2004-02-12', '10000000007', 'Av. Brasil, 310'),
('Henrique Rocha', '2003-12-30', '10000000008', 'Rua C, 65'),
('Isabela Ferreira', '2005-08-14', '10000000009', 'Rua D, 200'),
('João Pedro Ribeiro', '2004-06-09', '10000000010', 'Rua E, 100');

INSERT INTO turma (nome_turma, ano_letivo, turno) VALUES
('ADS 1A', 2026, 'Manhã'),
('ADS 1B', 2026, 'Noite'),
('ADS 2A', 2026, 'Manhã'),
('ADS 2B', 2026, 'Noite'),
('ADS 3A', 2026, 'Manhã'),
('ADS 3B', 2026, 'Noite'),
('ADS 4A', 2026, 'Manhã'),
('ADS 4B', 2026, 'Noite'),
('ADS 5A', 2026, 'Manhã'),
('ADS 5B', 2026, 'Noite');

INSERT INTO professor (nome, cpf, telefone, especialidade) VALUES
('Carlos Mendes', '20000000001', '21990001001', 'Banco de Dados'),
('Mariana Silva', '20000000002', '21990001002', 'Programação Java'),
('Roberto Alves', '20000000003', '21990001003', 'Engenharia de Software'),
('Fernanda Costa', '20000000004', '21990001004', 'Redes de Computadores'),
('Paulo Henrique', '20000000005', '21990001005', 'Programação Web'),
('Juliana Rocha', '20000000006', '21990001006', 'Segurança da Informação'),
('André Martins', '20000000007', '21990001007', 'Sistemas Operacionais'),
('Patricia Lima', '20000000008', '21990001008', 'Lógica de Programação'),
('Marcelo Souza', '20000000009', '21990001009', 'Desenvolvimento Mobile'),
('Renata Oliveira', '20000000010', '21990001010', 'Inteligência Artificial');

INSERT INTO disciplina (nome, carga_horaria, id_professor) VALUES
('Banco de Dados', 80, 1),
('Programação Java', 80, 2),
('Engenharia de Software', 60, 3),
('Redes de Computadores', 60, 4),
('Programação Web', 80, 5),
('Segurança da Informação', 60, 6),
('Sistemas Operacionais', 60, 7),
('Lógica de Programação', 80, 8),
('Desenvolvimento Mobile', 80, 9),
('Inteligência Artificial', 60, 10);

INSERT INTO matricula (id_aluno, id_turma, data_matricula, status) VALUES
(1, 1, '2026-02-02', 'Ativa'),
(2, 2, '2026-02-02', 'Ativa'),
(3, 3, '2026-02-03', 'Ativa'),
(4, 4, '2026-02-03', 'Ativa'),
(5, 5, '2026-02-04', 'Ativa'),
(6, 6, '2026-02-04', 'Ativa'),
(7, 7, '2026-02-05', 'Ativa'),
(8, 8, '2026-02-05', 'Ativa'),
(9, 9, '2026-02-06', 'Ativa'),
(10, 10, '2026-02-06', 'Ativa');

INSERT INTO nota (id_aluno, id_disciplina, valor, bimestre, data_avaliacao) VALUES
(1, 1, 9.00, 1, '2026-03-10'),
(2, 2, 8.50, 1, '2026-03-11'),
(3, 3, 7.50, 1, '2026-03-12'),
(4, 4, 8.00, 1, '2026-03-13'),
(5, 5, 9.50, 1, '2026-03-14'),
(6, 6, 7.00, 2, '2026-05-10'),
(7, 7, 8.50, 2, '2026-05-11'),
(8, 8, 9.00, 2, '2026-05-12'),
(9, 9, 7.50, 2, '2026-05-13'),
(10, 10, 10.00, 2, '2026-05-14');
