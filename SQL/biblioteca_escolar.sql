
-- Projeto: Biblioteca Escolar

CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE livros 
				(	    id			    INT AUTO_INCREMENT PRIMARY KEY,
					    titulo		  VARCHAR(100),
					    autor		    VARCHAR(100),
					    disponivel	BOOLEAN);

CREATE TABLE alunos 
				 (    id			INT AUTO_INCREMENT PRIMARY KEY,
					    nome		VARCHAR(100),
					    turma		VARCHAR(20));

CREATE TABLE emprestimos 
			  	(    id					      INT AUTO_INCREMENT PRIMARY KEY,
					     livro_id			    INT,
					     aluno_id			    INT,
					     data_emprestimo	DATE,
					     data_devolucao		DATE,
					     FOREIGN KEY (livro_id)
						    REFERENCES livros(id),
					     FOREIGN KEY (aluno_id) 
						    REFERENCES alunos(id));

-- Consulta de livros emprestados
SELECT	a.nome, 
		l.titulo, 
		e.data_emprestimo
FROM emprestimos e
	JOIN alunos a 
		ON e.aluno_id = a.id
	JOIN livros l 
		ON e.livro_id = l.id;
