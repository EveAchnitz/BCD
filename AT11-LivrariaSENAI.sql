-- Deletando qualquer banco de dados com o mesmo nome
DROP DATABASE IF EXISTS db_livrariasenai;

-- Criando um banco de dados
CREATE DATABASE IF NOT EXISTS db_livrariasenai;

USE db_livrariasenai;

-- Criando tabelas
CREATE TABLE IF NOT EXISTS tb_cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
cpf VARCHAR(11),
rg VARCHAR(11),
email VARCHAR(45)
);

INSERT INTO tb_cliente VALUES 
(DEFAULT, 'Lais', 78964735423, 12345678901, 'laisarlindo.2@gmail.com'),
(DEFAULT, 'João', 78964732783, 34545678901, 'joaozinho@gmail.com'),
(DEFAULT, 'Josefina', 78345675423, 12341098901, 'josefina@gmail.com'),
(DEFAULT, 'Gilberto', 78967655423, 12742678901, 'gilgil@gmail.com'),
(DEFAULT, 'Caetano', 78945635423, 12789678901, 'velosolindo@gmail.com'),
(DEFAULT, 'Maria Betânia', 78964925423, 17535678901, 'betania123@gmail.com'),
(DEFAULT, 'Luiz Gonzaga', 77614735423, 76495678901, 'gonzaguinha@gmail.com'),
(DEFAULT, 'Frederico', 78761735423, 17516878901, 'frederico@gmail.com'),
(DEFAULT, 'Sarah', 78756985423, 42356678901, 'sarinha@gmail.com'),
(DEFAULT, 'Ashutz', 78967565423, 12378958901, 'ashutzeu@gmail.com');

SELECT * FROM tb_cliente;

CREATE TABLE IF NOT EXISTS tb_cliente_telefone (
id_telefone INT PRIMARY KEY AUTO_INCREMENT,
telefone VARCHAR(15),
CLIENTE_id_cliente INT NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

INSERT INTO tb_cliente_telefone VALUES
(DEFAULT, 5515991745853, 1),
(DEFAULT, 5515991745378, 1),
(DEFAULT, 5515991745377, 2),
(DEFAULT, 5515991773156, 2),
(DEFAULT, 5515991789625, 3),
(DEFAULT, 5515991745789, 3),
(DEFAULT, 5515991745374, 4),
(DEFAULT, 5515991745789, 4),
(DEFAULT, 5515991744563, 5),
(DEFAULT, 5515991779135, 6),
(DEFAULT, 5515991745736, 7),
(DEFAULT, 5515998453621, 7),
(DEFAULT, 5515991747945, 8),
(DEFAULT, 5515991745456, 9),
(DEFAULT, 5515991745167, 10);

SELECT * FROM tb_cliente_telefone;

CREATE TABLE IF NOT EXISTS tb_endereco (
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(45),
bairro VARCHAR(45),
numero INT,
cidade VARCHAR(45),
estado VARCHAR(45),
CLIENTE_id_cliente INT NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

ALTER TABLE tb_endereco RENAME TO tb_cliente_endereco;

INSERT INTO tb_cliente_endereco VALUES
(DEFAULT, 'Rua 15', 'Bairro rosa', 123, 'Sorocaba', 'SP', 1),
(DEFAULT, 'Rua do Ouvidor', 'Bairro roxo', 321, 'Sorocaba', 'SP', 1),
(DEFAULT, 'Rua 4', 'Bairro azul', 345, 'Sorocaba', 'SP', 2),
(DEFAULT, 'Rua 54', 'Bairro amarelo', 456, 'Sorocaba', 'SP', 3),
(DEFAULT, 'Rua do amor', 'Jaquatiringa', 567, 'Sorocaba', 'SP', 3),
(DEFAULT, 'Rua da esperança', 'Jaquatiringa', 876, 'Sorocaba', 'SP', 4),
(DEFAULT, 'Rua do Ouvidor', 'Bairro verde', 678, 'Sorocaba', 'SP', 4),
(DEFAULT, 'Rua do 15', 'Bairro rosa', 098, 'Sorocaba', 'SP', 5),
(DEFAULT, 'Rua das rosas', 'Bairro vermelho', 890, 'Sorocaba', 'SP', 6),
(DEFAULT, 'Rua do céu', 'Bairro branco', 122, 'Sorocaba', 'SP', 6),
(DEFAULT, 'Rua do Ouvidor', 'Bairro roxo', 124, 'Sorocaba', 'SP', 7),
(DEFAULT, 'Rua 54', 'Bairro amarelo', 125, 'Sorocaba', 'SP', 7),
(DEFAULT, 'Rua 4', 'Bairro azul', 126, 'Sorocaba', 'SP', 8),
(DEFAULT, 'Rua das plantas', 'Bairro verde', 127, 'Sorocaba', 'SP', 9),
(DEFAULT, 'Rua da beleza', 'Bairro do chuchu', 128, 'Sorocaba', 'SP', 10);

SELECT * FROM tb_cliente_endereco;

CREATE TABLE IF NOT EXISTS tb_editora(
id_editora INT PRIMARY KEY AUTO_INCREMENT,
nome_editora VARCHAR(45),
nome_contato VARCHAR(45),
email VARCHAR(45)
);

INSERT INTO tb_editora VALUES
(DEFAULT, 'Magia', 'Editora Magia', 'magia@gmail.com'),
(DEFAULT, 'Magicamente mágico', 'Editora Magicamente', 'magicamente@gmail.com'),
(DEFAULT, 'A magia está no ar', 'Editora Magia no ar', 'magianoar@gmail.com'),
(DEFAULT, 'Magia mágica', 'Editora Magia mágica', 'magiamágica@gmail.com'),
(DEFAULT, 'Magia linda', 'Editora Magia Linda', 'magialinda@gmail.com');

SELECT * FROM tb_editora;

CREATE TABLE IF NOT EXISTS tb_livro (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(45),
categoria VARCHAR(45),
isbn VARCHAR(13),
ano YEAR,
valor DECIMAL(10,2),
autor VARCHAR(45),
EDITORA_id_editora INT NOT NULL,
FOREIGN KEY (EDITORA_id_editora) REFERENCES tb_editora(id_editora)
); 

INSERT INTO tb_livro VALUES
(DEFAULT, 'Alice', 'Aventura', '1672635425897', 1964, 15.50, 'Lewis Carrol', 1),
(DEFAULT, 'Heartstopper', 'Romance', '1675495425897', 2015, 55.50, 'Josefina', 2),
(DEFAULT, 'Alice 2', 'Aventura', '1672635764897', 1970, 15.50, 'Lewis Carrol', 1),
(DEFAULT, 'Ace', 'Aventura', '1672635356897', 1999, 30.50, 'Jim Carrie', 2),
(DEFAULT, 'Doce', 'Comédia', '1672645698897', 2001, 15.50, 'Someone', 3),
(DEFAULT, 'Doce 2', 'Comédia', '1672764425897', 2005, 18.50, 'Somebody', 3),
(DEFAULT, 'Arnold', 'Ação', '1672741425897', 1969, 40.50, 'Arnold', 4),
(DEFAULT, 'Arnold 2', 'Ação', '1672786525897', 1972, 40.50, 'Arnold o próprio', 4),
(DEFAULT, 'Bubaloo', 'Romance', '1672676525897', 2019, 15.50, 'Angelica', 5),
(DEFAULT, 'Bis', 'Infantil', '1672795425897', 2022, 11.50, 'Xuxa', 5);

SELECT * FROM tb_livro;