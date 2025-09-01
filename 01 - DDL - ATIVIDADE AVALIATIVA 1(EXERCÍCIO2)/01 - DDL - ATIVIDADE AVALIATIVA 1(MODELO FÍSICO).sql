-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Peca (
Pcodigo int auto_increment not null,
Peso decimal(10.2) not null,
#Ccod int auto_incremanty foreign key not null,
Cor varchar(50) not null,
Pnome varchar(100) not null,
PRIMARY KEY(Pcodigo,#Ccod)
)

CREATE TABLE Fornecedor (
#Ccod int auto_increment not null foreign key,
Status varchar(25) not null default "Ativo",
Fnome varchar(80) not null,
Fcodigo int auto_increment not null,
PRIMARY KEY(#Ccod,Fcodigo)
)

CREATE TABLE Projeto (
PRcodigo int auto_increment not null,
#Ccod varchar(80) Foreign Key not null,
PRnome varchar(100) not null,
PRIMARY KEY(PRcodigo,#Ccod)
)

CREATE TABLE Fornecimento (
#Icod int not null,
#Pcod int not null,
#Fcod int not null,
Quantidade int,
Pcodigo int auto_increment not null,
#Ccod int auto_incremanty foreign key not null,
-- Erro: nome do campo duplicado nesta tabela!
#Ccod int auto_increment not null foreign key,
Fcodigo int auto_increment not null,
PRcodigo int auto_increment not null,
-- Erro: nome do campo duplicado nesta tabela!
#Ccod varchar(80) Foreign Key not null,
PRIMARY KEY(#Icod,#Pcod,#Fcod),
FOREIGN KEY(#Ccod,,) REFERENCES Peca (Pcodigo,#Ccod),
FOREIGN KEY(Fcodigo,,) REFERENCES Fornecedor (#Ccod,Fcodigo),
FOREIGN KEY(#Ccod,,) REFERENCES Projeto (PRcodigo,#Ccod)
)

CREATE TABLE Cidade (
Ccod int auto_increment not null PRIMARY KEY,
Cnome Varchar(80),
uf varchar(100),
Pcodigo int auto_increment not null,
#Ccod int auto_incremanty foreign key not null,
FOREIGN KEY(#Ccod,,) REFERENCES Peca (Pcodigo,#Ccod)
)

CREATE TABLE Tem (
PRcodigo int auto_increment not null,
#Ccod varchar(80) Foreign Key not null,
Ccod int auto_increment not null,
FOREIGN KEY(#Ccod,,) REFERENCES Projeto (PRcodigo,#Ccod),
FOREIGN KEY(Ccod) REFERENCES Cidade (Ccod)
)

-- Erro: Nome de tabela duplicado (este erro compromete a integridade referencial)!
CREATE TABLE Tem (
Ccod int auto_increment not null,
#Ccod int auto_increment not null foreign key,
Fcodigo int auto_increment not null,
FOREIGN KEY(Ccod) REFERENCES Cidade (Ccod),
FOREIGN KEY(/*erro: ??*/) REFERENCES Fornecedor (#Ccod,Fcodigo)/*falha: chave estrangeira*/
)

