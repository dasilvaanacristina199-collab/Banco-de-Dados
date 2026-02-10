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

INSERT INTO curso (nomecurso, cargahoraria) 
VALUES ('Artes Graficas', 60);

INSERT INTO curso (nomecurso, cargahoraria) 
VALUES ('Marketing', 80);

INSERT INTO estudante (nome, documento, datanascimento, curso_IDFK) 
VALUES ('Ana', '12345678910', '2001-06-05', 1);

INSERT INTO estudante (nome, documento, datanascimento, curso_IDFK) 
VALUES ('Cristina', '12345678910', '2001-06-05', 2);

SELECT * FROM curso;

SELECT * FROM estudante;

