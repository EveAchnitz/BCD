CREATE DATABASE IF NOT EXISTS db_locadorafilmes;

USE db_locadorafilmes;

CREATE TABLE tb_cliente(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
telefone VARCHAR(11),
email VARCHAR(45) NOT NULL
);

CREATE TABLE tb_filme(
idFilme INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
genero VARCHAR(45) NOT NULL,
classIndicativa INT,
preco DECIMAL(4,2) NOT NULL,
CLIENTE_idCliente INT,
FOREIGN KEY (CLIENTE_idCliente) REFERENCES tb_cliente(idCliente)
);