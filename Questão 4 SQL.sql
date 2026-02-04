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
	CPF int,
	endereco_IDFK int, FOREIGN KEY (endereco_IDFK) REFERENCES endereco (id_endereco)
);

CREATE TABLE telefone
(
	id_telefone SERIAL PRIMARY KEY,
	num int,
	paciente_IDFK int, FOREIGN KEY (paciente_IDFK) REFERENCES paciente (id_paciente)
);
