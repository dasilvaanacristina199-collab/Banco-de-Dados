CREATE TABLE Clientes
(
  Cliente_ID serial primary key,
  Nome varchar (100) NOT NULL,
  CPF varchar (14) UNIQUE,
  Email varchar (150),
  Telefone varchar (14)
);

CREATE TABLE Vendas
(
  Venda_ID serial primary key,
  ValorTotal float,
  DataPedido date,
  Cliente_IDFK int, FOREIGN KEY (Cliente_IDFK) REFERENCES Clientes (Cliente_ID)
);

CREATE TABLE Produtos
(
  Produto_ID serial primary key,
  Descricao varchar (200),
  Categoria varchar (35),
  UnidadeDeMedida varchar (15),
  PrecoUnitario float
);

CREATE TABLE Venda_Produto
(
  Produto_IDFK int, FOREIGN KEY (Produto_IDFK) REFERENCES Produtos (Produto_ID),
  Vendas_IDFK int, FOREIGN KEY (Venda_IDFK) REFERENCES Vendas (Venda_ID),
  Quantidade int,
  PrecoTotal float,
  PRIMARY KEY (Venda_IDFK, Produto_IDFK)
);

INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Ana', '123.456.789.10', 'aninha@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Bruna', '123.456.789.20', 'bruna@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Carlos', '123.456.789.30', 'carlos@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Daniel', '123.456.789.04', 'dani@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Eloisa', '123.456.789.50', 'elo@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Gabriel', '123.456.789.06', 'gabi@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Helo', '123.456.789.07', 'helo@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Ingrid', '123.456.789.08', 'ingrid@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Fernanda', '123.456.789.09', 'fernandinha@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Jhon', '123.456.789.11', 'jhon@gmail.com', '(46)99912-3456');
INSERT INTO Clientes (Nome, CPF, Email, Telefone) VALUES ('Kely', '123.456.789.12', 'kelyzinha@gmail.com', '(46)99912-3456');

SELECT * FROM Clientes

INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (550.00, '2026-02-12', 1);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (500.00, '2026-02-12', 2);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (450.00, '2026-02-12', 3);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (400.00, '2026-02-12', 4);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (350.00, '2026-02-12', 5);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (300.00, '2026-02-12', 6);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (250.00, '2026-02-12', 7);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (200.00, '2026-02-12', 8);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (150.00, '2026-02-12', 9);
INSERT INTO Vendas (ValorTotal, DataPedido, Cliente_IDFK) VALUES (100.00, '2026-02-12', 10);

INSERT INTO Produtos(Descricao, Categoria, UnidadeDeMedida, PrecoUnitario) VALUES ('Harry Potter', 'Livros', 'un', 55.45);

SELECT * FROM Clientes ORDER BY Cliente_ID;

UPDATE Clientes SET Telefone = '(46)99912-3456' WERE Cliente_ID = 5;

UPDATE Produtos SET PrecoUnitario = 79.90 WERE Produto_ID = 1;

DELETE FROM Produtos WHERE Produto_ID = 2

