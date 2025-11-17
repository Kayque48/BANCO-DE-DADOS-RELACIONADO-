-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
Id_cliente int auto_increment PRIMARY KEY,
Nome_cliente varchar(80) not null,
email varchar(100) not null,
telefone varchar(15) not null,
endereco varchar(255),
Id_veiculo varchar(7) not null
)

CREATE TABLE Mecanico (
Nome_Mecanico varchar(100) not null,
Salario decimal(6,2) not null,
Id_Mecanico int auto_increment PRIMARY KEY
)

CREATE TABLE Veiculo+Ordem_Serivco (
Id_veiculo varchar(7) not null,
Modelo varchar(50) not null,
Ano date not null,
Marca varchar(50) not null,
cor Texto(1),
Id_os int auto_increment,
nome_os Texto(1),
preco_os decimal(8,2) not null,
Responsavel int not null,
Qtde_produto int,
Id_Mecanico int auto_increment,
Id_produto int auto_increment,
PRIMARY KEY(Id_veiculo,Id_os),
FOREIGN KEY(Id_Mecanico) REFERENCES Mecanico (Id_Mecanico)
)

CREATE TABLE Servicos (
Id_Servico int auto_increment PRIMARY KEY,
Servico varchar(100) not null,
Descricao varchar(255 not null,
Preco_servico decimal(8,2) not null,
Custo_servico Texto(1),
Id_produto int auto_increment
)

CREATE TABLE Produto (
Id_produto int auto_increment PRIMARY KEY,
nome_servico varchar(100) not null,
Descricao varchar(255) not null,
preco_produto decimal(8,2) not null,
custo_produto decimal(8,2)
)

CREATE TABLE Estoque (
Id_estoque int auto_increment,
qnt_produto int not null,
Nome_produto varchar(100) not null,
Data_movimentacao date not null,
Tipo_movimentacao varchar(7),
Id_produto int auto_increment,
PRIMARY KEY(Id_estoque,Data_movimentacao),
FOREIGN KEY(Id_produto) REFERENCES Produto (Id_produto)
)

CREATE TABLE realiza (
Id_Servico int auto_increment,
Id_Mecanico int auto_increment,
FOREIGN KEY(Id_Servico) REFERENCES Servicos (Id_Servico),
FOREIGN KEY(Id_Mecanico) REFERENCES Mecanico (Id_Mecanico)
)

ALTER TABLE Cliente ADD FOREIGN KEY(Id_veiculo) REFERENCES Veiculo+Ordem_Serivco (Id_veiculo,Id_os)
ALTER TABLE Veiculo+Ordem_Serivco ADD FOREIGN KEY(Id_produto) REFERENCES Produto (Id_produto)
ALTER TABLE Servicos ADD FOREIGN KEY(Id_produto) REFERENCES Produto (Id_produto)
