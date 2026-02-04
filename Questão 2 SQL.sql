CREATE TABLE livro
(
	id_livro SERIAL PRIMARY KEY,
	titulo varchar(50),
	ano_publicacao int,
	editora varchar(50)
);

CREATE TABLE autor
(
	id_autor SERIAL PRIMARY KEY,
	nome varchar(150) NOT NULL,
	pais_origem varchar(50)
);

CREATE TABLE livros_autores
(
	id_livro SERIAL,
	id_autor SERIAL, 
	livro_IDFK INT, FOREIGN KEY (livro_IDFK) REFERENCES livro (id_livro),
	autor_IDFK INT, FOREIGN KEY (autor_IDFK) REFERENCES autor (id_autor),
	PRIMARY KEY(id_livro,id_autor)
);
