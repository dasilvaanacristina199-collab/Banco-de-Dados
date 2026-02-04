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
	CPF SERIAL PRIMARY KEY,
	id_cliente int,
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
