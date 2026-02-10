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



INSERT INTO permanente (nome, salario, AdcTempoServico) 
VALUES ('Bruna','3500.00', '500.00');

INSERT INTO temporario (TerminoContrato) 
VALUES ('2026-06-30');


SELECT * FROM colaboradores;

SELECT * FROM permanete;

SELECT * FROM temporario;

