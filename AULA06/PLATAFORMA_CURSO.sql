CREATE DATABASE PLATAFORMA_CURSO;
USE PLATAFORMA_CURSO;

CREATE TABLE ALUNOS(
	ID_ALUNO INT AUTO_INCREMENT PRIMARY KEY,
    NOME_ALUNO VARCHAR(80) NOT NULL,
    EMAIL VARCHAR(80) NOT NULL,
    DATA_NASCIMENTO DATE
);

CREATE TABLE CURSOS(
	ID_CURSOS INT AUTO_INCREMENT PRIMARY KEY,
    TITULO VARCHAR(80) NOT NULL,
    DESCRICAO VARCHAR(255),
    CARGA_HORARIA INT,
    CSTATUS VARCHAR(20) DEFAULT 'ATIVO'
);

CREATE TABLE INSCRICOES(
	ID_INCRICOES INT AUTO_INCREMENT PRIMARY KEY,
	FK_ID_ALUNO INT NOT NULL,
	FK_ID_CURSO INT NOT NULL,
    DATA_INSCRICAO DATE,
    FOREIGN KEY(FK_ID_ALUNO) REFERENCES ALUNOS(ID_ALUNO),
    FOREIGN KEY(FK_ID_CURSO) REFERENCES CURSOS(ID_CURSOS)
);

CREATE TABLE AVALICOES(
	ID_AVALICOES INT AUTO_INCREMENT PRIMARY KEY,
    FK_ID_INSCRICAO INT,
    NOTA DECIMAL(4,2),
    COMENTARIO VARCHAR(255),
    FOREIGN KEY(FK_ID_INSCRICAO) REFERENCES INSCRICOES(ID_INCRICOES)
);

-- ALUNOS
INSERT INTO ALUNOS(NOME_ALUNO, EMAIL, DATA_NASCIMENTO) VALUES
	('Ana Souza', 'ana.souza@email.com', '1995-03-12'),
	('Bruno Lima', 'bruno.lima@email.com', '1992-07-21'),
	('Carla Mendes', 'carla.mendes@email.com', '1998-01-30'),
	('Diego Santos', 'diego.santos@email.com', '1990-11-05'),
	('Eduarda Costa', 'eduarda.costa@email.com', '2000-09-18');

-- CURSOS
INSERT INTO CURSOS(TITULO, DESCRICAO, CARGA_HORARIA, CSTATUS) VALUES
	('Introdução a programação Java Cervística', 'Cervos ensinando Java para cervos, combinação perfeita', 999, 'ativo'),
	('Banco de Dados com SQL', 'Aprenda a modelar e consultar bancos relacionais', 60, 'inativo'),
	('HTML e CSS do Zero ao Pro', 'Curso completo para front-end iniciante', 40, 'inativo'),
	('JavaScript Avançado', 'Do básico ao avançado no JS moderno', 80, 'inativo'),
	('Python para Análise de Dados', 'Manipulação de dados com Pandas e NumPy', 70, 'inativo');

-- INSCRICOES (ligando ALUNOS x CURSOS)
INSERT INTO INSCRICOES(FK_ID_ALUNO, FK_ID_CURSO, DATA_INSCRICAO) VALUES
	(1, 1, '2025-01-10'),
	(2, 2, '2025-02-15'),
	(3, 3, '2025-03-20'),
	(4, 4, '2025-04-05'),
	(5, 5, '2025-04-25');

-- AVALICOES (ligando INSCRICOES)
INSERT INTO AVALICOES(FK_ID_INSCRICAO, NOTA, COMENTARIO) VALUES
	(1, 10.50, 'PERFEITO!!!'),
	(2, 8.00, 'Gostei bastante, aprendi bem a modelar BD'),
    (3, 7.75, 'Explicação boa, mas podia ter mais exemplos práticos');
    
SELECT * FROM ALUNOS;

	UPDATE ALUNOS
	SET EMAIL = 'BelliCostas@gmail.com', NOME_ALUNO = 'Izabelli Costa da Silva'
	WHERE ID_ALUNO = 1;
    
    UPDATE CURSOS
    SET CARGA_HORARIA = '9', CSTATUS = 'ATIVO'
    WHERE ID_CURSOS = 4;
    
    UPDATE AVALICOES
    SET NOTA = '5.00'
    WHERE ID_AVALICOES = 2;

	DELETE FROM INSCRICOES
    WHERE ID_INCRICOES = '1';
    
    DELETE FROM CURSOS
    WHERE ID_CURSOS = '3';
    
    DELETE FROM AVALICOES
    WHERE ID_AVALICOES = '2';
    
    DELETE FROM ALUNOS
    WHERE ID_ALUNO = '5';
    
    
    SELECT * FROM ALUNOS;
    SELECT NOME_ALUNO, EMAIL FROM ALUNOS;
    SELECT CARGA
    
	

