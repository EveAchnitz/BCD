-- Criando um banco de dados
CREATE DATABASE db_livraria;

-- Usando um banco de dados
USE db_livraria;

-- Criando tabelas: cliente, cliente telefone, cliente endereco, livro, estoque, editora, pedido e item pedido
CREATE TABLE tb_cliente(
id_cliente int PRIMARY KEY NOT NULL,
nome varchar(45) NOT NULL,
cpf varchar(11) NOT NULL,
rg varchar(11) NOT NULL,
email varchar(45) NOT NULL
);

CREATE TABLE tb_cliente_telefone(
id_telefone int PRIMARY KEY NOT NULL,
telefone varchar(15),
CLIENTE_id_cliente int NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

CREATE TABLE tb_cliente_endereco(
id_endereco int PRIMARY KEY,
rua varchar(45) NOT NULL,
numero int NOT NULL,
cidade varchar(45) NOT NULL,
estado varchar(45) NOT NULL,
CLIENTE_id_cliente int NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

CREATE TABLE tb_editora(
id_editora int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_editora varchar(45) NOT NULL,
nome_contato varchar(45) NOT NULL,
email varchar(45) NOT NULL,
contato varchar(45) NOT NULL
);

CREATE TABLE tb_livro(
id_livro int PRIMARY KEY NOT NULL AUTO_INCREMENT,
titulo varchar(45) NOT NULL,
categoria varchar(45) NOT NULL,
isbn varchar(13) NOT NULL,
ano year NOT NULL,
valor decimal(10,2),
autor varchar(45),
EDITORA_id_editora int,
FOREIGN KEY (EDITORA_id_editora) REFERENCES tb_editora(id_editora)
);

CREATE TABLE tb_estoque(
quantidade int,
LIVRO_id_livro int NOT NULL,
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro)
);

CREATE TABLE tb_pedido(
id_pedido int PRIMARY KEY NOT NULL AUTO_INCREMENT,
valor decimal(10,2) NOT NULL,
dia_hora date NOT NULL,
CLIENTE_id_cliente int NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

CREATE TABLE tb_item_pedido(
quantidade int NOT NULL,
valor decimal(10,2),
PEDIDO_id_pedido int NOT NULL,
LIVRO_id_livro int NOT NULL,
FOREIGN KEY (PEDIDO_id_pedido) REFERENCES tb_pedido(id_pedido),
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro)
);