USE LojaDB;

-- Exercício 01
SELECT id_nf, id_item, cod_prod, valor_unit FROM tb_vendas
WHERE desconto IS NULL; 

-- Exercício 02
SELECT id_nf, id_item, cod_prod, valor_unit, valor_unit-(valor_unit*(desconto/100)) AS valor_vendido FROM tb_vendas
WHERE desconto IS NOT NULL;

-- Exercício 03
UPDATE tb_vendas
SET desconto = 0
WHERE desconto IS NULL;

-- Exercício 04
SELECT id_nf, id_item, cod_prod, valor_unit, quantidade * valor_unit AS valor_total, desconto, valor_unit-(valor_unit*(desconto/100)) AS valor_vendido FROM tb_vendas;

-- Exercício 05
SELECT id_nf, SUM(quantidade*valor_unit) AS valor_total FROM tb_vendas
GROUP BY id_nf
ORDER BY valor_total DESC;

-- Exercício 06
SELECT id_nf, SUM(valor_unit-(valor_unit*(desconto/100))) AS valor_vendido FROM tb_vendas
GROUP BY id_nf
ORDER BY valor_vendido DESC;

-- Exercício 07
SELECT cod_prod, MAX(quantidade) FROM tb_vendas
GROUP BY cod_prod
LIMIT 1;

-- Exercício 08
SELECT id_nf, COUNT(quantidade) AS quantidade, cod_prod FROM tb_vendas
WHERE quantidade > 10
GROUP BY id_nf, cod_prod;

-- Exercício 09
SELECT id_nf, SUM(quantidade*valor_unit) AS valor_total FROM tb_vendas
WHERE quantidade*valor_unit > 500
GROUP BY id_nf
ORDER BY valor_total DESC;

-- Exercício 10
SELECT cod_prod, AVG(desconto) AS media FROM tb_vendas
GROUP BY cod_prod;

-- Exercício 11
SELECT cod_prod, MIN(desconto) AS menor, MAX(desconto) AS maior, AVG(desconto) AS media FROM tb_vendas
GROUP BY cod_prod;

-- Exercício 12
SELECT id_nf, COUNT(id_nf) AS qtd_itens FROM tb_vendas
WHERE quantidade > 3
GROUP BY id_nf;