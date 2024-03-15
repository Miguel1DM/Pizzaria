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
    tempoPreparo VARCHAR(5) NOT NULL,
    ingredientes VARCHAR(150) NOT NULL    
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
	FOREIGN KEY (idPizza) REFERENCES Pizzas (id),
    FOREIGN KEY (idCliente) REFERENCES Cliente (id)
);

CREATE TABLE Fornadas(
	idPizza SMALLINT,
    idCliente SMALLINT,
    dataHora DATETIME,
	FOREIGN KEY (idPizza) REFERENCES Pizzas(id),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);







