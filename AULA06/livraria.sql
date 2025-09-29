-- CRIAÇÃO DO BANCO
CREATE DATABASE IF NOT EXISTS LIVRARIA;
USE LIVRARIA;

-- TABELA AUTORES
CREATE TABLE AUTORES (
    ID_AUTOR INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(80) NOT NULL,
    NACIONALIDADE VARCHAR(50),
    DATA_NASCIMENTO DATE
);

-- TABELA EDITORAS
CREATE TABLE EDITORAS (
    ID_EDITORA INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(80) NOT NULL,
    PAIS VARCHAR(50)
);

-- TABELA CLIENTES
CREATE TABLE CLIENTES (
    ID_CLIENTE INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(80) NOT NULL,
    CPF VARCHAR(19) UNIQUE NOT NULL,
    EMAIL VARCHAR(80),
    TELEFONE VARCHAR(19),
    DATA_NASCIMENTO DATE
);

-- TABELA LIVROS
CREATE TABLE LIVROS (
    ID_LIVRO INT AUTO_INCREMENT PRIMARY KEY,
    TITULO VARCHAR(100) NOT NULL,
    GENERO VARCHAR(50),
    AUTOR VARCHAR(80),
    LSTATUS VARCHAR(20),
    EDITORA VARCHAR(80),
    ANO_LANCAMENTO DATE,
    PRECO DECIMAL(10,2)
);

-- TABELA VENDAS
CREATE TABLE VENDAS (
    ID_VENDA INT AUTO_INCREMENT PRIMARY KEY,
    ID_CLIENTE INT,
    ID_LIVRO INT,
    DATA_VENDA DATE,
    QUANTIDADE INT,
    VALOR_TOTAL DECIMAL(10,2),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
    FOREIGN KEY (ID_LIVRO) REFERENCES LIVROS(ID_LIVRO)
);

-- =======================
-- INSERTS AUTORES (20)
-- =======================
INSERT INTO AUTORES (NOME, NACIONALIDADE, DATA_NASCIMENTO) VALUES
('Machado de Assis', 'Brasileiro', '1839-06-21'),
('Clarice Lispector', 'Brasileira', '1920-12-10'),
('J.K. Rowling', 'Britânica', '1965-07-31'),
('J.R.R. Tolkien', 'Britânico', '1892-01-03'),
('George Orwell', 'Britânico', '1903-06-25'),
('Stephen King', 'Americano', '1947-09-21'),
('Gabriel García Márquez', 'Colombiano', '1927-03-06'),
('Antoine de Saint-Exupéry', 'Francês', '1900-06-29'),
('Oscar Wilde', 'Irlandês', '1854-10-16'),
('Markus Zusak', 'Australiano', '1975-06-23'),
('Rick Riordan', 'Americano', '1964-06-05'),
('George R.R. Martin', 'Americano', '1948-09-20'),
('Dan Brown', 'Americano', '1964-06-22'),
('Paulo Coelho', 'Brasileiro', '1947-08-24'),
('Patrick Rothfuss', 'Americano', '1973-06-06'),
('John Green', 'Americano', '1977-08-24'),
('Suzanne Collins', 'Americana', '1962-08-10'),
('Sing Shong', 'Coreano', '1980-01-01'),
('Albert Camus', 'Francês', '1913-11-07'),
('Franz Kafka', 'Tcheco', '1883-07-03');

-- =======================
-- INSERTS EDITORAS (10)
-- =======================
INSERT INTO EDITORAS (NOME, PAIS) VALUES
('Redice Studio', 'Coreia do Sul'),
('Rocco', 'Brasil'),
('Martins Fontes', 'Brasil'),
('Agir', 'Brasil'),
('Martin Claret', 'Brasil'),
('Garnier', 'Brasil'),
('Companhia Editora Nacional', 'Brasil'),
('Editora Record', 'Brasil'),
('Suma de Letras', 'Brasil'),
('Intrínseca', 'Brasil');

-- =======================
-- INSERTS CLIENTES (20)
-- =======================
INSERT INTO CLIENTES (NOME, CPF, EMAIL, TELEFONE, DATA_NASCIMENTO) VALUES
('Ana Souza', '123.456.789-00', 'ana.souza@email.com', '(11) 98765-4321', '1990-03-15'),
('Bruno Lima', '987.654.321-00', 'bruno.lima@email.com', '(21) 91234-5678', '1985-07-22'),
('Carla Mendes', '111.222.333-44', 'carla.mendes@email.com', '(31) 99876-5432', '1995-12-10'),
('Daniel Rocha', '555.666.777-88', 'daniel.rocha@email.com', '(41) 91234-8765', '2000-01-05'),
('Fernanda Alves', '222.333.444-55', 'fernanda.alves@email.com', '(51) 98765-1234', '1992-09-18'),
('Gustavo Ferreira', '666.777.888-99', 'gustavo.ferreira@email.com', '(61) 91234-5678', '1988-04-25'),
('Helena Martins', '333.444.555-66', 'helena.martins@email.com', '(71) 99876-1122', '1997-11-30'),
('Igor Santos', '444.555.666-77', 'igor.santos@email.com', '(81) 93456-7890', '1993-06-12'),
('Juliana Costa', '555.666.777-11', 'juliana.costa@email.com', '(91) 97654-3210', '1999-02-27'),
('Lucas Almeida', '666.777.888-22', 'lucas.almeida@email.com', '(31) 92345-6789', '1987-08-14'),
('Mariana Ribeiro', '777.888.999-33', 'mariana.ribeiro@email.com', '(21) 93456-1234', '1994-05-21'),
('Natália Moura', '888.999.000-44', 'natalia.moura@email.com', '(11) 94567-8901', '1996-12-05'),
('Otávio Pires', '999.000.111-55', 'otavio.pires@email.com', '(71) 98765-6789', '1991-03-09'),
('Paula Castro', '000.111.222-66', 'paula.castro@email.com', '(41) 99876-4321', '1998-07-01'),
('Rafael Gomes', '111.222.333-77', 'rafael.gomes@email.com', '(81) 95678-1234', '1989-10-22'),
('Sofia Nunes', '222.333.444-88', 'sofia.nunes@email.com', '(61) 98765-9876', '1995-01-16'),
('Thiago Barbosa', '333.444.555-99', 'thiago.barbosa@email.com', '(51) 97654-6789', '1992-06-07'),
('Ursula Tavares', '444.555.666-00', 'ursula.tavares@email.com', '(31) 93456-1111', '1984-09-28'),
('Victor Oliveira', '999.111.222-33', 'victor.oliveira@email.com', '(21) 98765-2222', '1990-12-13'),
('Yasmin Lopes', '666.777.888-55', 'yasmin.lopes@email.com', '(11) 94567-3333', '1997-11-19');

-- =======================
-- INSERTS LIVROS (35) com status variados e preços diversos
-- =======================
INSERT INTO LIVROS (TITULO, GENERO, AUTOR, LSTATUS, EDITORA, ANO_LANCAMENTO, PRECO) VALUES
('Omniscient Reader''s Viewpoint', 'Fantasia', 'Sing Shong', 'DISPONÍVEL', 'Redice Studio', '2021-01-15', 79.90),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 'J.K. Rowling', 'EM PRÉ-VENDA', 'Rocco', '1997-06-26', 59.90),
('O Senhor dos Anéis: A Sociedade do Anel', 'Fantasia', 'J.R.R. Tolkien', 'INDISPONÍVEL', 'Martins Fontes', '1954-07-29', 99.90),
('O Pequeno Príncipe', 'Infantil', 'Antoine de Saint-Exupéry', 'DISPONÍVEL', 'Agir', '1943-04-06', 29.90),
('O Retrato de Dorian Gray', 'Romance', 'Oscar Wilde', 'ESGOTADO', 'Martin Claret', '1890-06-20', 34.90),
('Dom Casmurro', 'Romance', 'Machado de Assis', 'DISPONÍVEL', 'Garnier', '1899-01-01', 44.90),
('Memórias Póstumas de Brás Cubas', 'Romance', 'Machado de Assis', 'INDISPONÍVEL', 'Garnier', '1881-01-01', 39.90),
('O Hobbit', 'Fantasia', 'J.R.R. Tolkien', 'DISPONÍVEL', 'Martins Fontes', '1937-09-21', 69.90),
('A Revolução dos Bichos', 'Distopia', 'George Orwell', 'DISPONÍVEL', 'Companhia Editora Nacional', '1945-08-17', 32.90),
('Cem Anos de Solidão', 'Realismo Mágico', 'Gabriel García Márquez', 'EM PRÉ-VENDA', 'Editora Record', '1967-05-30', 64.90),
('It: A Coisa', 'Terror', 'Stephen King', 'DISPONÍVEL', 'Suma de Letras', '1986-09-15', 89.90),
('O Iluminado', 'Terror', 'Stephen King', 'DISPONÍVEL', 'Suma de Letras', '1977-01-28', 74.90),
('A Menina que Roubava Livros', 'Drama', 'Markus Zusak', 'DISPONÍVEL', 'Intrínseca', '2005-09-01', 49.90),
('Percy Jackson e o Ladrão de Raios', 'Fantasia', 'Rick Riordan', 'DISPONÍVEL', 'Intrínseca', '2005-06-28', 44.90),
('A Guerra dos Tronos', 'Fantasia', 'George R.R. Martin', 'ESGOTADO', 'LeYa', '1996-08-06', 99.90),
('O Código Da Vinci', 'Suspense', 'Dan Brown', 'DISPONÍVEL', 'Arqueiro', '2003-03-18', 54.90),
('O Alquimista', 'Ficção', 'Paulo Coelho', 'DISPONÍVEL', 'HarperCollins', '1988-04-15', 39.90),
('O Nome do Vento', 'Fantasia', 'Patrick Rothfuss', 'DISPONÍVEL', 'Arqueiro', '2007-03-27', 84.90),
('A Culpa é das Estrelas', 'Romance', 'John Green', 'DISPONÍVEL', 'Intrínseca', '2012-01-10', 42.90),
('Jogos Vorazes', 'Distopia', 'Suzanne Collins', 'DISPONÍVEL', 'Rocco', '2008-09-14', 59.90),
('O Caminho do Mestre', 'Ficção', 'Paulo Coelho', 'EM PRÉ-VENDA', 'HarperCollins', '1997-05-10', 120.00),
('A Ascensão do Dragão', 'Fantasia', 'J.R.R. Tolkien', 'ESGOTADO', 'Martins Fontes', '2000-08-21', 150.50),
('O Grande Livro de Magia', 'Fantasia', 'Sing Shong', 'DISPONÍVEL', 'Redice Studio', '2022-03-15', 135.75),
('Mistérios do Universo', 'Ciência', 'Albert Camus', 'DISPONÍVEL', 'Editora Record', '2018-11-05', 140.00),
('Crônicas do Poder', 'Fantasia', 'George R.R. Martin', 'INDISPONÍVEL', 'LeYa', '2015-09-30', 180.90),
('Segredos do Tempo', 'Ficção Científica', 'Isaac Asimov', 'DISPONÍVEL', 'Editora Record', '1980-07-12', 85.50),
('Viagem às Estrelas', 'Fantasia', 'Carl Sagan', 'EM PRÉ-VENDA', 'Martins Fontes', '1995-05-21', 110);

INSERT INTO VENDAS (ID_CLIENTE, ID_LIVRO, DATA_VENDA, QUANTIDADE, VALOR_TOTAL) VALUES
(1, 1, '2025-09-29', 2, 79.90),
(2, 3, '2025-09-28', 1, 39.90),
(3, 2, '2025-09-27', 3, 119.70),
(1, 4, '2025-09-26', 1, 49.50),
(4, 5, '2025-09-25', 2, 89.80),
(5, 2, '2025-09-24', 1, 39.90),
(3, 1, '2025-09-23', 2, 79.90),
(2, 5, '2025-09-22', 3, 134.70),
(1, 3, '2025-09-21', 1, 39.90),
(4, 4, '2025-09-20', 2, 99.00),
(5, 1, '2025-09-19', 1, 39.95),
(3, 3, '2025-09-18', 2, 79.80),
(2, 2, '2025-09-17', 1, 39.90),
(1, 5, '2025-09-16', 3, 134.70),
(4, 1, '2025-09-15', 2, 79.90),
(5, 4, '2025-09-14', 1, 49.50),
(3, 5, '2025-09-13', 2, 89.80),
(2, 3, '2025-09-12', 1, 39.90),
(1, 2, '2025-09-11', 3, 119.70),
(4, 5, '2025-09-10', 1, 44.90),
(5, 3, '2025-09-09', 2, 79.80),
(3, 4, '2025-09-08', 1, 49.50),
(2, 1, '2025-09-07', 2, 79.90),
(1, 3, '2025-09-06', 1, 39.90),
(4, 2, '2025-09-05', 3, 119.70),
(5, 5, '2025-09-04', 2, 89.80),
(3, 1, '2025-09-03', 1, 39.95),
(2, 4, '2025-09-02', 2, 99.00),
(1, 5, '2025-09-01', 3, 134.70),
(4, 3, '2025-08-31', 1, 39.90),
(5, 2, '2025-08-30', 2, 79.80),
(3, 5, '2025-08-29', 1, 44.90),
(2, 3, '2025-08-28', 3, 119.70),
(1, 1, '2025-08-27', 2, 79.90),
(4, 4, '2025-08-26', 1, 49.50),
(5, 3, '2025-08-25', 2, 79.80),
(3, 2, '2025-08-24', 1, 39.90),
(2, 5, '2025-08-23', 3, 134.70),
(1, 4, '2025-08-22', 2, 99.00),
(4, 1, '2025-08-21', 1, 39.95),
(5, 2, '2025-08-20', 2, 79.80),
(3, 3, '2025-08-19', 1, 39.90),
(2, 1, '2025-08-18', 3, 119.70),
(1, 5, '2025-08-17', 2, 89.80),
(4, 3, '2025-08-16', 1, 39.90),
(5, 4, '2025-08-15', 2, 99.00),
(3, 5, '2025-08-14', 3, 134.70),
(2, 2, '2025-08-13', 1, 39.90),
(1, 1, '2025-08-12', 2, 79.90),
(4, 5, '2025-08-11', 1, 44.90),
(5, 3, '2025-08-10', 2, 79.80),
(3, 4, '2025-08-09', 1, 49.50),
(2, 1, '2025-08-08', 2, 79.90),
(1, 2, '2025-08-07', 3, 119.70);


-- CONSULTA
SELECT TITULO FROM LIVRO;
SELECT TITULO, ANO_LANCAMENTO FROM LIVRO;

-- CONSULTA POR DATA COM CONDIÇÃO
SELECT TITULO, AUTOR FROM LIVRO WHERE ANO_LANCAMENTO > 2005;

-- CONSULTA POR CRESCENTE DE DECRESCENTE
SELECT TITULO, ANO_LANCAMENTO FROM LIVRO
ORDER BY ANO_LANCAMENTO DESC;

-- CONSULTA POR LIMITE DE RESULTADO
SELECT TITULO FROM LIVRO
LIMIT 4;

-- RENOMEAER COLUNAS COM AS
SELECT TITULO AS NOME, AUTOR AS ESCRITOR
FROM LIVRO;

-- FUNÇÕES AGREGADAS
SELECT COUNT(*) AS TOTAL_LIVRO
FROM LIVROS;

SELECT SUM(PRECO) AS TOTAL_LIVRO
FROM LIVROS;

SELECT AVG(PRECO) AS TOTAL_LIVRO
FROM LIVROS;



SELECT TITULO, PRECO FROM LIVROS
WHERE TITULO = "%HARRY%" AND PRECO > 10;

SELECT TITULO, PRECO FROM LIVROS
WHERE TITULO = "%HARRY%" OR PRECO > 10;

SELECT ID_LIVRO, COUNT(*) AS TOTAL_LIVROS
FROM LIVROS
GROUP BY ID_AUTOR
HAVING TOTAL_LIVROS > 5
ORDER BY TOTAL_LIVROS DESC;

-- USO DO LIKE
SELECT TITULO FROM LIVROS
WHERE TITULO LIKE '%Harry%';

SELECT TITULO FROM LIVROS
WHERE TITULO LIKE 'O%';

SELECT TITULO FROM LIVROS
WHERE TITULO LIKE '%t';

SELECT TITULO  FROM LIVROS
WHERE TITULO LIKE 'H___y';


-- SOMATIVO 
-- =======================
SELECT COUNT(*) AS TOTAL_LIVRO
FROM LIVROS
ORDER BY TITULO;
-- =======================
SELECT TITULO PRECO FROM LIVROS
WHERE TITULO LIKE 'A%' AND PRECO > 100;
-- =======================
SELECT COUNT(*) AS TOTAL_LIVRO
FROM VENDAS;

SELECT SUM(QUANTIDADE) AS TOTAL_LIVRO
FROM VENDAS;
-- =======================
SELECT TITULO FROM LIVROS
WHERE LSTATUS = 'DISPONÍVEL';

DROP DATABASE livraria;
