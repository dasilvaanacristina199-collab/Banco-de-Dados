CREATE TABLE pedidos
(
	id_pedidos SERIAL PRIMARY KEY,
	DataPedido date,
	ValorTotal float
);

CREATE TABLE produto
(
	id_produto SERIAL PRIMARY KEY,
	desconto int,
	preco float
);

CREATE TABLE cliente
(
	CPF varchar (15),
	id_cliente SERIAL PRIMARY KEY,
	nome varchar(150),
	pedidos_IDFK int, FOREIGN KEY (pedidos_IDFK) REFERENCES pedidos (id_pedidos)
);

CREATE TABLE produto_pedido
(
	id_Npedido SERIAL,
	id_codigoProduto SERIAL,
	qtde int,
	pedidos_IDFK int, FOREIGN KEY (pedidos_IDFK) REFERENCES pedidos (id_pedidos),
	produto_IDFK int, FOREIGN KEY (produto_IDFK) REFERENCES produto (id_produto),
	PRIMARY KEY(id_Npedido,id_codigoProduto)
);


INSERT INTO pedidos (DataPedido, ValorTotal) VALUES 
('2026-02-05', 20.00),
('2026-02-10', 50.00);

INSERT INTO produto (desconto, preco) VALUES 
(5, 10.00),
(5, 14.00);

INSERT INTO cliente (CPF, nome, pedidos_IDFK) VALUES 
('11.222.333-44','Lurdes', 1),
('55.666.777-88','Vanessa', 2);

INSERT INTO produto_pedido (qtde, pedidos_IDFK, produto_IDFK) VALUES 
(3, 1, 1),
(5, 2, 2);

SELECT * FROM pedidos;
SELECT * FROM produto;
SELECT * FROM cliente;
SELECT * FROM produto_pedido;

SELECT * FROM pedidos
INNER JOIN cliente ON cliente.pedidos_IDFK = pedidos.id_pedidos
INNER JOIN produto_pedido ON produto_pedido.pedidos_IDFK = pedidos.id_pedidos
INNER JOIN produto ON produto_pedido.produto_IDFK = produto.id_produto;
