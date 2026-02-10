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

CREATE TABLE livros_autores (
    livro_IDFK INT NOT NULL,
    autor_IDFK INT NOT NULL,
    FOREIGN KEY (livro_IDFK) REFERENCES livro (id_livro),
    FOREIGN KEY (autor_IDFK) REFERENCES autor (id_autor)
);


INSERT INTO livro (titulo, ano_publicacao, editora) 
VALUES ('Pequena Sereia', 1837, 'DarkSide Books');

INSERT INTO livro (titulo, ano_publicacao, editora) 
VALUES ('O Pequeno Prícipe', 1943, 'Campainha das Letrinhas');

INSERT INTO autor (nome, pais_origem) 
VALUES ('Hans Andersen', 'Dinamarca');

INSERT INTO autor (nome, pais_origem) 
VALUES ('Antoine Saint-Exupéry', 'Estados Unidos')

INSERT INTO livros_autores (livro_IDFK, autor_IDFK) 
VALUES (1, 1); 

INSERT INTO livros_autores (livro_IDFK, autor_IDFK) 
VALUES (2, 2);

SELECT * FROM livro;

SELECT * FROM autor;

SELECT * FROM livros_autores;

