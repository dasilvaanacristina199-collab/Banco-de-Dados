CREATE TABLE curso
(
	id_curso SERIAL PRIMARY KEY,
	nomecurso varchar(50),
	cargahoraria int
);

CREATE TABLE estudante
(
	id_matricula SERIAL PRIMARY KEY,
	nome varchar(150) NOT NULL,
	documento varchar(14),
	datanascimento DATE,
	curso_IDFK INT, FOREIGN KEY (curso_IDFK) REFERENCES curso (id_curso)
);

SELECT * FROM estudante;