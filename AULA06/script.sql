-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE SOLAR;
USE SOLAR;
SELECT DATABASE();

CREATE TABLE Clientes (
Id_Cliente int auto_increment PRIMARY KEY,
Nome_Cliente varchar(80)
);

CREATE TABLE Produtos (
Id_Produto int auto_increment PRIMARY KEY,
Nome_Produto varchar(80)
);

CREATE TABLE Compra (
Id_Compra int auto_increment Primary Key,
Id_Produto int auto_increment,
Id_Cliente int auto_increment,
FOREIGN KEY(Id_Produto) REFERENCES Produtos (Id_Produto),
FOREIGN KEY(Id_Cliente) REFERENCES Clientes(Id_Cliente)
);