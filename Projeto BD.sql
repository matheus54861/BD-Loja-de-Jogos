CREATE DATABASE minha_loja_de_jogos;

CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Endereco VARCHAR(200)
);

CREATE TABLE Jogos (
    ID_Jogo INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL UNIQUE,
    Genero VARCHAR(50),
    Plataforma VARCHAR(50),
    Preco DECIMAL(10,2)
);

CREATE TABLE Pedidos (
    ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10,2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

CREATE TABLE Itens_Pedido (
    ID_Item_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pedido INT,
    ID_Jogo INT,
    Quantidade INT,
    Preco_Unitario DECIMAL(10,2),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Jogo) REFERENCES Jogos(ID_Jogo)
);

INSERT INTO Clientes (Nome, Email, Endereco)
VALUES ('João Silva', 'joao@email.com', 'Rua dos Bobos, 0');

SELECT * FROM Jogos WHERE Plataforma = 'PS5';

UPDATE Jogos SET Preco = 150.00 WHERE ID_Jogo = 1;

DELETE FROM Pedidos WHERE ID_Pedido = 10;