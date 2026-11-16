-- PARTE 2: INSERÇÃO DE DADOS
-- Inserção de 10 registros em cada uma das seis tabelas.

INSERT INTO Turma (nome_turma, ano_letivo, turno) VALUES
('1A', 2026, 'Manhã'),
('1B', 2026, 'Tarde'),
('2A', 2026, 'Manhã'),
('2B', 2026, 'Noite'),
('3A', 2026, 'Manhã'),
('3B', 2026, 'Tarde'),
('1C', 2026, 'Noite'),
('2C', 2026, 'Manhã'),
('3C', 2026, 'Tarde'),
('Pré-vestibular', 2026, 'Noite');

INSERT INTO Aluno (nome, data_nascimento, cpf, endereco) VALUES
('Ana Souza', '2009-02-14', '10000000001', 'Rua das Flores, 10'),
('Bruno Lima', '2008-06-20', '10000000002', 'Rua Central, 25'),
('Carla Mendes', '2009-09-03', '10000000003', 'Av. Brasil, 100'),
('Daniel Alves', '2008-12-11', '10000000004', 'Rua do Sol, 45'),
('Eduarda Costa', '2007-04-08', '10000000005', 'Rua Azul, 80'),
('Felipe Rocha', '2009-07-19', '10000000006', 'Av. Norte, 90'),
('Giovana Martins', '2008-01-30', '10000000007', 'Rua Verde, 12'),
('Henrique Dias', '2007-11-22', '10000000008', 'Rua Nova, 33'),
('Isabela Ribeiro', '2009-05-16', '10000000009', 'Rua Bela, 71'),
('João Ferreira', '2008-08-27', '10000000010', 'Av. Sul, 55');

INSERT INTO Professor (nome, cpf, telefone, especialidade, id_turma) VALUES
('Marcos Silva', '20000000001', '(21) 90000-0001', 'Matemática', 1),
('Patrícia Souza', '20000000002', '(21) 90000-0002', 'Português', 2),
('Roberto Lima', '20000000003', '(21) 90000-0003', 'História', 3),
('Juliana Alves', '20000000004', '(21) 90000-0004', 'Geografia', 4),
('Carlos Mendes', '20000000005', '(21) 90000-0005', 'Física', 5),
('Fernanda Costa', '20000000006', '(21) 90000-0006', 'Química', 6),
('Paulo Rocha', '20000000007', '(21) 90000-0007', 'Biologia', 7),
('Renata Dias', '20000000008', '(21) 90000-0008', 'Inglês', 8),
('André Martins', '20000000009', '(21) 90000-0009', 'Filosofia', 9),
('Beatriz Ribeiro', '20000000010', '(21) 90000-0010', 'Sociologia', 10);

INSERT INTO Matricula (id_aluno, id_turma, data_matricula, status) VALUES
(1, 1, '2026-01-10', 'Ativa'),
(2, 2, '2026-01-11', 'Ativa'),
(3, 3, '2026-01-12', 'Ativa'),
(4, 4, '2026-01-13', 'Ativa'),
(5, 5, '2026-01-14', 'Ativa'),
(6, 6, '2026-01-15', 'Pendente'),
(7, 7, '2026-01-16', 'Ativa'),
(8, 8, '2026-01-17', 'Ativa'),
(9, 9, '2026-01-18', 'Ativa'),
(10, 10, '2026-01-19', 'Ativa');

INSERT INTO Disciplina (nome, carga_horaria, id_professor) VALUES
('Matemática', 80, 1),
('Português', 80, 2),
('História', 60, 3),
('Geografia', 60, 4),
('Física', 60, 5),
('Química', 60, 6),
('Biologia', 60, 7),
('Inglês', 40, 8),
('Filosofia', 40, 9),
('Sociologia', 40, 10);

INSERT INTO Nota (id_aluno, id_disciplina, valor, bimestre, data_avaliacao) VALUES
(1, 1, 8.50, 1, '2026-03-20'),
(2, 2, 7.00, 1, '2026-03-21'),
(3, 3, 9.00, 1, '2026-03-22'),
(4, 4, 6.50, 1, '2026-03-23'),
(5, 5, 8.00, 1, '2026-03-24'),
(6, 6, 7.50, 1, '2026-03-25'),
(7, 7, 9.50, 1, '2026-03-26'),
(8, 8, 6.00, 1, '2026-03-27'),
(9, 9, 8.00, 1, '2026-03-28'),
(10, 10, 7.50, 1, '2026-03-29');
