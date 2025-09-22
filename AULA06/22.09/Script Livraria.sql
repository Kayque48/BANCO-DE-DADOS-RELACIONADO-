CREATE DATABASE LIVRARIA;
USE LIVRARIA;

CREATE TABLE Autores (
  Id_Autores int auto_increment PRIMARY KEY,
  Nome_Autor varchar(80),
  Data_de_Nascimento date,
  Nacionalidade varchar(20) default 'Brasileira'
);

INSERT INTO Autores (Nome_Autor, Data_de_Nascimento, Nacionalidade) VALUES
('Machado de Assis', '1839-06-21', 'Brasileira'),
('Clarice Lispector', '1920-12-10', 'Brasileira'),
('George Orwell', '1903-06-25', 'Britânica');

CREATE TABLE Editoras (
  Cnpj varchar(20) PRIMARY KEY,
  Nome_Editora varchar(80) not null,
  Endereco varchar(80),
  Contato varchar(80)
);

INSERT INTO Editoras (Cnpj, Nome_Editora, Endereco, Contato) VALUES
('12.345.678/0001-99', 'Companhia das Letras', 'São Paulo - SP', 'contato@companhia.com'),
('98.765.432/0001-55', 'Rocco', 'Rio de Janeiro - RJ', 'contato@rocco.com'),
('11.222.333/0001-44', 'Penguin Books', 'Londres - UK', 'info@penguin.com');

CREATE TABLE Clientes (
  Int_Clientes int auto_increment PRIMARY KEY,
  Nome_Cliente varchar(80),
  Email varchar(80),
  CPF varchar(15),
  Data_Nascimento date,
  Telefone varchar(19)
);

INSERT INTO Clientes (Nome_Cliente, Email, CPF, Data_Nascimento, Telefone) VALUES
('João Silva', 'joao@email.com', '123.456.789-00', '1990-05-10', '(11)91234-5678'),
('Maria Souza', 'maria@email.com', '987.654.321-00', '1985-09-20', '(21)99876-5432'),
('Carlos Lima', 'carlos@email.com', '456.789.123-00', '2000-01-15', '(31)93456-7890');

CREATE TABLE Livros (
  Id_Livro int auto_increment PRIMARY KEY,
  Titulo varchar(80) not null,
  Genero varchar(80),
  Quantidade int,
  Preco decimal(7,2)
);

INSERT INTO Livros (Titulo, Genero, Quantidade, Preco) VALUES
('Dom Casmurro', 'Romance', 10, 45.90),
('A Hora da Estrela', 'Ficção', 8, 39.90),
('1984', 'Distopia', 12, 59.90);

CREATE TABLE Vendas (
  Id_Vendas int auto_increment PRIMARY KEY,
  Data_Venda date,
  Quantidade int,
  Valor_Total decimal(7,2),
  Id_Cliente int,
  Id_Livro int,
  FOREIGN KEY(Id_Cliente) REFERENCES Clientes (Int_Clientes),
  FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro)
);

INSERT INTO Vendas (Data_Venda, Quantidade, Valor_Total, Id_Cliente, Id_Livro) VALUES
('2025-09-01', 1, 45.90, 1, 1),
('2025-09-05', 2, 79.80, 2, 2),
('2025-09-10', 1, 59.90, 3, 3);

CREATE TABLE Faz (
  Id_Autores int,
  Id_Livro int,
  FOREIGN KEY(Id_Autores) REFERENCES Autores (Id_Autores),
  FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro)
);

INSERT INTO Faz (Id_Autores, Id_Livro) VALUES
(1, 1),
(2, 2),
(3, 3);

CREATE TABLE Tem (
  Id_Livro int,
  Cnpj varchar(20),
  FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro),
  FOREIGN KEY(Cnpj) REFERENCES Editoras (Cnpj)
);

INSERT INTO Tem (Id_Livro, Cnpj) VALUES
(1, '12.345.678/0001-99'),
(2, '98.765.432/0001-55'),
(3, '11.222.333/0001-44');

CREATE TABLE Pertence (
  Id_Pertence int auto_increment PRIMARY KEY,
  Id_Livro int,
  Id_Cliente int,
  FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro),
  FOREIGN KEY(Id_Cliente) REFERENCES Clientes (Int_Clientes)
);

INSERT INTO Pertence (Id_Livro, Id_Cliente) VALUES
(1, 2),
(3, 1);

CREATE TABLE Possui (
  Id_Possui int auto_increment PRIMARY KEY,
  Id_Livro int,
  Id_Vendas int,
  FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro),
  FOREIGN KEY(Id_Vendas) REFERENCES Vendas (Id_Vendas)
);

INSERT INTO Possui (Id_Livro, Id_Vendas) VALUES
(1, 1),
(2, 2),
(3, 3);

SELECT * FROM Autores;
SELECT * FROM Editoras;
SELECT * FROM Clientes;
SELECT * FROM Livros;
SELECT * FROM Vendas;

