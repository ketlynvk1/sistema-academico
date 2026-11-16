-- PARTE 1: CRIAÇÃO DAS TABELAS
-- Criação das seis tabelas principais do sistema escolar.
-- São utilizadas chaves primárias, estrangeiras e restrições
-- para organizar e manter a integridade dos dados.

CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(30) NOT NULL UNIQUE,
    ano_letivo YEAR NOT NULL,
    turno VARCHAR(20) NOT NULL,
    CHECK (turno IN ('Manhã', 'Tarde', 'Noite'))
);

CREATE TABLE Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    endereco VARCHAR(150) NOT NULL,
    observacoes TEXT NULL
);

CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL,
    especialidade VARCHAR(80) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    id_turma INT NOT NULL,
    CONSTRAINT fk_professor_turma
      FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
      ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    data_hora_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT 'Ativa',
    CONSTRAINT fk_matricula_aluno
      FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
      ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_matricula_turma
      FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
      ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (status IN ('Ativa', 'Pendente', 'Cancelada'))
);

CREATE TABLE Disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL UNIQUE,
    carga_horaria INT NOT NULL,
    id_professor INT NOT NULL,
    CONSTRAINT fk_disciplina_professor
      FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
      ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (carga_horaria > 0)
);

CREATE TABLE Nota (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    valor DECIMAL(4,2) NOT NULL,
    bimestre TINYINT NOT NULL,
    data_avaliacao DATE NOT NULL,
    CONSTRAINT fk_nota_aluno
      FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
      ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_nota_disciplina
      FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina)
      ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (valor BETWEEN 0 AND 10),
    CHECK (bimestre BETWEEN 1 AND 4)
);
