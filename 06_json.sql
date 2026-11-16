-- PARTE 6: UTILIZAÇÃO DO TIPO JSON
-- Criação de uma tabela para armazenar dados estruturados
-- em formato JSON, como email, responsável e cidade.

CREATE TABLE Dados_Aluno (
    id_dados INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    dados JSON NOT NULL,
    CONSTRAINT fk_dados_aluno
      FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
      ON UPDATE CASCADE ON DELETE RESTRICT
);
INSERT INTO Dados_Aluno (id_aluno, dados) VALUES
(1, '{"email":"ana@email.com","responsavel":"Maria Souza",
"cidade":"Rio de Janeiro"}'),
(2, '{"email":"bruno@email.com","responsavel":"Carlos Lima",
"cidade":"Rio de Janeiro"}');
