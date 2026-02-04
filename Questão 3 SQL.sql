CREATE TABLE colaboradores
(
	id_colaboradores SERIAL PRIMARY KEY,
	nome varchar(150) NOT NULL,
	salario float
);

CREATE TABLE permanente
(
	AdcTempoServico float
) INHERITS(colaboradores);

CREATE TABLE temporario
(
	TerminoContrato date
) INHERITS(colaboradores);