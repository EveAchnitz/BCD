-- Criar o banco de dados
CREATE DATABASE db_cinema;
USE db_cinema;

-- Criar a tabela tb_filmes
CREATE TABLE tb_filmes (
    id_filme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    duracao INT, -- em minutos
    classificacao_etaria INT,
    ano_lancamento YEAR,
    diretor VARCHAR(100)
);

-- Criar a tabela tb_espectadores
CREATE TABLE tb_espectadores (
    id_espectador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    genero_favorito VARCHAR(50),
    avaliacao DECIMAL(2,1), -- Avaliação de 0 a 10
    id_filme INT,
    data_visualizacao DATE,
    FOREIGN KEY (id_filme) REFERENCES tb_filmes(id_filme)
);

-- Inserir dados na tabela tb_filmes
INSERT INTO tb_filmes (titulo, genero, duracao, classificacao_etaria, ano_lancamento, diretor) VALUES
('A Origem', 'Ficção Científica', 148, 12, 2010, 'Christopher Nolan'),
('Avatar', 'Ficção Científica', 162, 12, 2009, 'James Cameron'),
('Titanic', 'Romance', 195, 12, 1997, 'James Cameron'),
('O Senhor dos Anéis: O Retorno do Rei', 'Fantasia', 201, 14, 2003, 'Peter Jackson'),
('Vingadores: Ultimato', 'Ação', 181, 12, 2019, 'Anthony e Joe Russo'),
('Coringa', 'Drama', 122, 16, 2019, 'Todd Phillips'),
('Pulp Fiction', 'Crime', 154, 18, 1994, 'Quentin Tarantino'),
('A Bela e a Fera', 'Fantasia', 129, 10, 2017, 'Bill Condon'),
('Matrix', 'Ficção Científica', 136, 14, 1999, 'Lana e Lilly Wachowski'),
('Clube da Luta', 'Drama', 139, 18, 1999, 'David Fincher'),
('Forrest Gump', 'Drama', 142, 10, 1994, 'Robert Zemeckis'),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 152, 10, 2001, 'Chris Columbus'),
('Homem-Aranha', 'Ação', 121, 10, 2002, 'Sam Raimi'),
('Interestelar', 'Ficção Científica', 169, 10, 2014, 'Christopher Nolan'),
('Jurassic Park', 'Aventura', 127, 10, 1993, 'Steven Spielberg');

-- Inserir dados na tabela tb_espectadores
INSERT INTO tb_espectadores (nome, idade, genero_favorito, avaliacao, id_filme, data_visualizacao) VALUES
('Ana Souza', 25, 'Ficção Científica', 9.0, 1, '2023-10-10'),
('João Silva', 30, 'Ficção Científica', 8.5, 1, '2023-10-12'),
('Carlos Lima', 20, 'Ficção Científica', 8.0, 5, '2023-10-14'),
('Paula Reis', 28, 'Romance', 9.5, 3, '2023-10-15'),
('Lucas Andrade', 22, 'Fantasia', 8.8, 4, '2023-10-18'),
('Mariana Costa', 35, 'Ação', 9.2, 5, '2023-10-20'),
('Fernanda Alves', 27, 'Drama', 9.7, 15, '2023-10-21'),
('Rodrigo Gomes', 19, 'Crime', 8.5, 7, '2023-10-22'),
('Sofia Martins', 18, 'Fantasia', 8.0, 8, '2023-10-23'),
('Thiago Oliveira', 33, 'Ficção Científica', 8.9, 9, '2023-10-25'),
('Julia Rocha', 26, 'Drama', 9.0, 10, '2023-10-28'),
('Gabriel Santos', 29, 'Drama', 8.7, 11, '2023-10-29'),
('Larissa Mendes', 24, 'Fantasia', 9.1, 12, '2023-10-30'),
('Felipe Silva', 17, 'Ação', 8.3, 13, '2023-11-01'),
('Carla Almeida', 31, 'Ficção Científica', 9.4, 14, '2023-11-02'),
('Mateus Freitas', 20, 'Aventura', 8.6, 15, '2023-11-03'),
('Renata Oliveira', 36, 'Romance', 9.8, 3, '2023-11-04'),
('André Santos', 21, 'Fantasia', 8.9, 12, '2023-11-05'),
('Juliana Silva', 23, 'Ação', 9.0, 5, '2023-11-06'),
('Marcelo Costa', 34, 'Crime', 8.5, 7, '2023-11-07'),
('Aline Pinto', 19, 'Fantasia', 8.4, 8, '2023-11-08'),
('Fábio Moreira', 32, 'Drama', 9.5, 15, '2023-11-09'),
('Beatriz Melo', 27, 'Ficção Científica', 8.8, 1, '2023-11-10'),
('Henrique Lima', 28, 'Fantasia', 9.1, 4, '2023-11-11'),
('Marta Rocha', 25, 'Drama', 8.6, 10, '2023-11-12'),
('Lucas Nunes', 20, 'Aventura', 8.7, 15, '2023-11-13'),
('Viviane Santos', 24, 'Romance', 9.0, 3, '2023-11-14'),
('Daniel Cardoso', 19, 'Ficção Científica', 8.9, 5, '2023-11-15'),
('Camila Freitas', 30, 'Ação', 9.2, 5, '2023-11-16'),
('Roberto Silva', 35, 'Drama', 9.0, 11, '2023-11-17'),
('Lara Couto', 22, 'Ficção Científica', 8.8, 14, '2023-11-18'),
('Pedro Santos', 26, 'Aventura', 8.5, 15, '2023-11-19'),
('Diana Luz', 20, 'Fantasia', 9.1, 12, '2023-11-20'),
('Alessandro Moura', 33, 'Fantasia', 9.3, 4, '2023-11-21'),
('Julio Cesar', 18, 'Ação', 8.6, 13, '2023-11-22'),
('Fernanda Silva', 29, 'Crime', 8.8, 7, '2023-11-23'),
('Milena Andrade', 24, 'Fantasia', 9.2, 8, '2023-11-24'),
('Igor Pereira', 32, 'Drama', 8.7, 10, '2023-11-25'),
('Lucas Braga', 21, 'Fantasia', 8.9, 12, '2023-11-26'),
('Vitor Sousa', 27, 'Ficção Científica', 8.7, 9, '2023-11-27'),
('Helena Albuquerque', 22, 'Drama', 8.6, 15, '2023-11-28'),
('Marina Dias', 18, 'Ação', 9.1, 5, '2023-11-29'),
('Catarina Ribeiro', 24, 'Ficção Científica', 8.8, 5, '2023-11-30'),
('Isabel Lima', 33, 'Drama', 9.0, 11, '2023-12-01'),
('Edson Santos', 30, 'Ficção Científica', 8.5, 1, '2023-12-02'),
('Luana Torres', 26, 'Fantasia', 9.4, 4, '2023-12-03'),
('Rafael Melo', 29, 'Crime', 8.3, 7, '2023-12-04'),
('Elisa Nogueira', 20, 'Fantasia', 8.8, 8, '2023-12-05'),
('Eduardo Tavares', 28, 'Aventura', 9.2, 15, '2023-12-06');