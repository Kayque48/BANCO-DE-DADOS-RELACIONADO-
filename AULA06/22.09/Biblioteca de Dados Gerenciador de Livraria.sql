-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Autores (
Nacionalidade varchar(20) defualt Brasileira,
Id_Autores int auto_increment PRIMARY KEY,
Data_de_Nascimento date,
Nome_Autor varchar(80)
)

CREATE TABLE Editoras (
Cnpj int auto_increment PRIMARY KEY,
Nome_Editora varchar(80) not null,
Endereco varchar(80),
Contato varchar(80)
)

CREATE TABLE Clientes (
Int_Clientes int auto_incrmenet PRIMARY KEY,
Nome_Cliente varchar(80),
E-mail varchar(80),
CPF varchar(15),
Data_Nascimento date,
Telefone varchar(19)
)

CREATE TABLE Livros (
Titulo varchar(80) not null,
Autor varchar(80),
Editora varchar(80),
Genero varchar(80),
Quantidade int,
Preco decimal(7,2),
Id_Livro int auto_increment PRIMARY KEY
)

CREATE TABLE Vendas (
Id_Vendas int auto_increment PRIMARY KEY,
Data_Venda date,
Quantidade int,
Valor_Total decimal(7,2),
Nome_Cliente int foreing key,
Titulo int foreign
)

CREATE TABLE Faz (
Id_Autores int auto_increment,
Id_Livro int auto_increment,
FOREIGN KEY(Id_Autores) REFERENCES Autores (Id_Autores),
FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro)
)

CREATE TABLE Tem (
Id_Livro int auto_increment,
Cnpj int auto_increment,
FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro),
FOREIGN KEY(Cnpj) REFERENCES Editoras (Cnpj)
)

CREATE TABLE Pertence (
Id_Livro int auto_increment,
Int_Clientes int auto_incrmenet,
FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro),
FOREIGN KEY(Int_Clientes) REFERENCES Clientes (Int_Clientes)
)

CREATE TABLE Possui (
Id_Livro int auto_increment,
Id_Vendas int auto_increment,
FOREIGN KEY(Id_Livro) REFERENCES Livros (Id_Livro)/*falha: chave estrangeira*/
)

