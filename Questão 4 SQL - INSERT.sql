CREATE TABLE endereco
(
	id_endereco SERIAL PRIMARY KEY,
	rua varchar(150),
	num int
);

CREATE TABLE paciente
(
	id_paciente SERIAL PRIMARY KEY,
	nome varchar(150),
	CPF varchar(14),
	endereco_IDFK int,
	FOREIGN KEY (endereco_IDFK) REFERENCES endereco (id_endereco)
);

CREATE TABLE telefone
(
	id_telefone SERIAL PRIMARY KEY,
	num varchar(20),
	paciente_IDFK int,
	FOREIGN KEY (paciente_IDFK) REFERENCES paciente (id_paciente)
);

INSERT INTO endereco (rua, num) VALUES 
('Av. Brasil', 31),
('Rua Barbosa', 502);

INSERT INTO paciente (nome, CPF, endereco_IDFK) VALUES 
('Ana Julia', '111.111.111-00', 1),
('Anderson Luis', '222.222.222-11', 2);

INSERT INTO telefone (num, paciente_IDFK) 
VALUES 
('4699900-1122', 1),
('4698833-4455', 2);

SELECT * FROM endereco;
SELECT * FROM paciente;
SELECT * FROM telefone;

SELECT * FROM endereco
INNER JOIN paciente ON paciente.endereco_IDFK = endereco.id_endereco
INNER JOIN telefone ON telefone.paciente_IDFK = paciente.id_paciente;
