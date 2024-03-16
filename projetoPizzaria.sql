CREATE DATABASE Pizzaria;

USE Pizzaria;

CREATE TABLE Cliente(
	nome VARCHAR(25) NOT NULL,
    cep varchar(10) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(15) NOT NULL
    
);

CREATE TABLE Pizzas(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    preco FLOAT NOT NULL,
    tempoPreparo VARCHAR(5) NOT NULL,
    idSabores SMALLINT,
	idIngredientes SMALLINT,
    idBorda SMALLINT,
    idAdicionais SMALLINT,
    FOREIGN KEY (idSabores) REFERENCES Sabores (id),
	FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (id),
    FOREIGN KEY (idAdicionais) REFERENCES Adicionais (id),
    FOREIGN KEY (idBorda) REFERENCES Bordas (id)
);

CREATE TABLE Pedidos(
	id SMALLINT KEY AUTO_INCREMENT,
	data DATETIME,
	idCliente SMALLINT,
    idPizzas SMALLINT,
    idBebida SMALLINT,
	FOREIGN KEY (idPizzas) REFERENCES Pizzas (id),
    FOREIGN KEY (idBebida) REFERENCES Bebidas (id),
    FOREIGN KEY (idCliente) REFERENCES Cliente (id)
);

CREATE TABLE Fornadas(
	idPedido SMALLINT,
    dataHora DATETIME,
	FOREIGN KEY (idPedido) REFERENCES Pedidos(id)
);

CREATE TABLE Bebidas(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    preco FLOAT NOT NULL,
    idIngredientes SMALLINT,
    FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (id)
);

CREATE TABLE Bordas(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    preco FLOAT NOT NULL,
	idIngredientes SMALLINT,
    FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (id)
);

CREATE TABLE Adicionais(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    preco FLOAT NOT NULL,
    dIngredientes SMALLINT,
    FOREIGN KEY (idIngredientes) REFERENCES Ingredientes (id)
);

CREATE TABLE Sabores(
	id SMALLINT KEY AUTO_INCREMENT,
	tipoSabor Varchar(20) NOT NULL,
	idIngredientes SMALLINT,
    FOREIGN KEY (idIngredientes) REFERENCES Ingredientes(id)
);

CREATE TABLE Ingredientes(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(15),
    preco FLOAT
);

