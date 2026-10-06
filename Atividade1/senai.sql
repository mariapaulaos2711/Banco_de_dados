CREATE DATABASE empresa;

USE empresa;

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL, 
    data_entrada DATE NOT NULL
);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(19, 2) NOT NULL,
    data_entrada DATE NOT NULL
);

CREATE TABLE compra(
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    qtd_vendida INT NOT NULL,
    valor INT NOT NULL,
    data_entrada DATE NOT NULL
);

USE empresa;

INSERT INTO cliente(id_cliente, nome_cliente, email, telefone, data_entrada)
VALUES(1, "sulamita", "slumita@gmail.com", "11 99564-9999", "1976-03-22");

INSERT INTO cliente(id_cliente, nome_cliente, email, telefone, data_entrada)
VALUES(2, "rafaelyeny j", "kawaizinharafinha@gmail.com", "11 98749-9449", "1999-03-22");

INSERT INTO cliente(id_cliente, nome_cliente, email, telefone, data_entrada)
VALUES(3, "mathias", "mathiasss@gmail.com", "11 76349-9009", "2023-06-23");

USE empresa;

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(1, "Iphone 16 pro", 5000.89, "2025-10-05");

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(2, "Iphone 14 pro", 2500.93, "2024-10-23");

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(3, "Iphone 34", 16000.38, "2026-09-01");

SELECT * FROM produto;

USE empresa;

INSERT INTO compra(id_compra, id_cliente, id_produto, qtd_vendida, valor, data_entrada)
VALUES(1, 1, 1, 5, 5000.89, "2025-10-05");

INSERT INTO compra(id_compra, id_cliente, id_produto, qtd_vendida, valor, data_entrada)
VALUES(2, 3, 2, 100, 2500.93, "2024-10-23");

INSERT INTO compra(id_compra, id_cliente, id_produto, qtd_vendida, valor, data_entrada)
VALUES(3, 2, 3, 1, 16000.38, "2026-09-01");

SELECT * FROM compra;

<-- update e delete -->

USE empresa;

INSERT INTO produto(id_produto, nome_produto, preco, data_entrada)
VALUES(4, "Iphone 15", 3000.00, "2025-10-05");

UPDATE produto
SET preco = 6000.00
WHERE id_produto = 4;

DELETE FROM produto
WHERE id_produto = 4;