CREATE DATABASE emprestimos_livros;

USE emprestimos_livros;

CREATE TABLE alunos(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100) NOT NULL,
    email_aluno VARCHAR(100) NOT NULL,
    curso_aluno VARCHAR(100) NOT NULL, 
);

CREATE TABLE livros(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo_livro VARCHAR(100) NOT NULL,
    autor_livro VARCHAR(100) NOT NULL,
    curso_aluno DATE NOT NULL
);

CREATE TABLE emprestimos(
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_retirada DATE NOT NULL,
    data_devolucao DATE NOT NULL
);

USE emprestimos_livros;

INSERT INTO alunos(id_aluno, nome_aluno, email_aluno, curso_aluno)
VALUES(1, "Marina", "minhh@gmail.com", "Sistemas de Informação");

INSERT INTO alunos(id_aluno, nome_aluno, email_aluno, curso_aluno)
VALUES(2, "Lucas", "lukinhask@gmail.com", "Ciência da Computação");

INSERT INTO alunos(id_aluno, nome_aluno, email_aluno, curso_aluno)
VALUES(3, "joão", "joaozinhu@gmail.com", "Ciência da Computação");

USE emprestimos_livros;

INSERT INTO livros(id_livro, titulo_livro, autor_livro, curso_aluno)
VALUES(1, "Introdução à Programação", "Carlos Silva", "Sistemas de Informação");

INSERT INTO livros(id_livro, titulo_livro, autor_livro, curso_aluno)
VALUES(2, "Cálculo I", "Maria Oliveira", "Engenharia");

INSERT INTO livros(id_livro, titulo_livro, autor_livro, curso_aluno)
VALUES(2, "Introdução à Programação", "Carlos Silva", "Sistemas de Informação");

SELECT * FROM livros;

USE emprestimos_livros;

INSERT INTO emprestimos(id_emprestimo, id_aluno, id_livro, data_retirada, data_devolucao)
VALUES(1, 1, 1, "2023-08-23", "2023-09-20");

INSERT INTO emprestimos(id_emprestimo, id_aluno, id_livro, data_retirada, data_devolucao)
VALUES(2, 2, 3, "2023-06-11", "2023-07-20");

INSERT INTO emprestimos(id_emprestimo, id_aluno, id_livro, data_retirada, data_devolucao)
VALUES(3, 3, 2, "2023-04-08", "2023-05-20");

SELECT * FROM emprestimos;

<!-- update e delete -->

USE emprestimos_livros;

INSERT INTO livros(id_livro, titulo_livro, autor_livro, curso_aluno)
VALUES(2, "Cálculo I", "Maria Oliveira", "Engenharia");

UPDATE livros
SET titulo_livro = "Cálculo II"
WHERE id_livro = 2;

DELETE FROM alunos
WHERE id_aluno = 2;