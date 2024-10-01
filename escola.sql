create database if not exists escolatecnica;
use escolatecnica;


CREATE TABLE IF NOT EXISTS Alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    sexo CHAR(1),
    email VARCHAR(50),
    telefone VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS Cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(50) NOT NULL,
    duracao INT,
    nivel VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno)
        REFERENCES alunos (id),
    FOREIGN KEY (id_curso)
        REFERENCES cursos (id)
);

insert into Alunos (nome, data_nascimento, sexo, email, telefone) values 
 ('João Silva', '2001-03-15', 'M', 'joao.silva@email.com', '11987654321'),
 ('Maria Souza', '2002-07-22', 'F', 'maria.souza@email.com', '11987654322'),
 ('Carlos Pereira', '2000-11-10', 'M', 'carlos.pereira@email.com', '11987654323'),
 ('José das Couves','1990-10-02','M','couves@gmail.com','1234'),
 ('Robert Einstein','2003-01-01','M','Jenio@outlook.com','299792458'),
 ('John Doe','2000-01-01','M','JohnDoe@mac.com','0000000000'),
 ('Marcos Rodrigues ','1982-05-12','M','M4RC0S@hotmail.com','010010101'),
 ('Pedro de Alcântara','1825-12-02','M','PedroIIdoBrasil@gmail.com.br','01120120'),
 ('Tiberius Claudius Nero Cesar','16-11-0000','M','TiberiusCesar@imperador.com','01000000'),
 ('José da Silva','2077-06-02','M','JoseS77@meta.com','01412324344');

Insert Into Cursos (nome_curso, duracao, nivel) Values 
	('Desenvolvimento Web', 12, 'Intermediário'),
	('manutenção de Computadores', 6, 'básico'),
	('redes de Computadores', 18, 'avançado'),
	('Microeletronica','18','avançado'),
	('Analise','6','basico');

INSeRT into Matriculas (id_aluno, id_curso, data_matricula) VALUeS 
	(1, 1, '2024-09-01'),
	(2, 2, '2024-09-02'),
	(3, 3, '2024-09-03'),
	(4, 2, '2024-09-07'),
	(5, 1, '2026-09-06'),
	(6, 5, '2016-09-10'),
	(7, 4, '2000-09-03'),
	(8, 3, '2022-09-02'),
	(9, 4, '2030-09-01'),
        (10, 5, '2093-09-08');
