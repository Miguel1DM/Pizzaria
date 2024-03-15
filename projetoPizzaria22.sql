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
    ingredientes VARCHAR(150) NOT NULL,  
    IdSabor SMALLINT,
    idBorda SMALLINT,
    idAdicionais SMALLINT,
    FOREIGN KEY (idSabor) REFERENCES Sabores (id),
    FOREIGN KEY (idAdicionais) REFERENCES Adicionais (id),
    FOREIGN KEY (idBorda) REFERENCES Bordas (id)
);

CREATE TABLE Estoque(
	id SMALLINT KEY AUTO_INCREMENT,
    nomeIngrediente VARCHAR(20) NOT NULL,
    quantidade MEDIUMINT NOT NULL
);

CREATE TABLE Pedidos(
	id SMALLINT KEY AUTO_INCREMENT,
	data DATETIME,
    idPizza SMALLINT,
    idCliente SMALLINT,
    idBebida SMALLINT,
	FOREIGN KEY (idPizza) REFERENCES Pizzas (id),
    FOREIGN KEY (idBebida) REFERENCES Bebidas (id),
    FOREIGN KEY (idCliente) REFERENCES Cliente (id)
);

CREATE TABLE Fornadas(
	idPedido SMALLINT,
    idCliente SMALLINT,
    dataHora DATETIME,
	FOREIGN KEY (idPedido) REFERENCES Pedidos(id),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
    
);

CREATE TABLE Bebidas(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(100) NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE Bordas(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    ingredientes VARCHAR(100) NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE Adicionais(
	id SMALLINT KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    ingredientes VARCHAR(100) NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE Sabores(
	id SMALLINT KEY AUTO_INCREMENT,
	tipoSabor Varchar(20) NOT NULL,
    ingredientes VARCHAR(100) NOT NULL
);

DROP TABLE Pedidos;
DROP TABLE fornadas;
DROP TABLE Pizzas;











