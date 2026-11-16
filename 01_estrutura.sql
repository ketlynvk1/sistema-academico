-- Projeto: Sistema Acadêmico
-- Banco de dados: MariaDB
-- Criação da estrutura final das tabelas.
-- Execute este arquivo em um banco vazio. Ele não apaga bancos existentes.

CREATE DATABASE IF NOT EXISTS sistema_academico
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE sistema_academico;

CREATE TABLE IF NOT EXISTS aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    endereco VARCHAR(200) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    observacoes TEXT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    ano_letivo INT NOT NULL,
    turno VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    data_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_matricula_aluno
        FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    CONSTRAINT fk_matricula_turma
        FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    id_professor INT NOT NULL,
    CONSTRAINT fk_disciplina_professor
        FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS nota (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    valor DECIMAL(4,2) NOT NULL,
    bimestre INT NOT NULL,
    data_avaliacao DATE NOT NULL,
    CONSTRAINT fk_nota_aluno
        FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    CONSTRAINT fk_nota_disciplina
        FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina),
    CONSTRAINT chk_nota_valor CHECK (valor >= 0 AND valor <= 10),
    CONSTRAINT chk_nota_bimestre CHECK (bimestre BETWEEN 1 AND 4)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS dados_complementares_aluno (
    id_dados INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL UNIQUE,
    informacoes JSON NOT NULL,
    CONSTRAINT fk_dados_aluno
        FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
) ENGINE=InnoDB;
