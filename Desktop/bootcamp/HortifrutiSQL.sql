CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

-- Exercicio 1

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
tipo VARCHAR(255) NOT NULL,
secao VARCHAR(255) NOT NULL,

PRIMARY KEY(id)

);

-- Exercicio 2

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),

-- Exercicio 3

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Exercicio 4

INSERT INTO tb_categorias(tipo,secao)
VALUES("fruta","Hortifruti");

INSERT INTO tb_categorias(tipo,secao)
VALUES("legumes","Hortifruti");

INSERT INTO tb_categorias(tipo,secao)
VALUES("tempero","Hortifruti");

INSERT INTO tb_categorias(tipo,secao)
VALUES("ovos","Hortifruti");

INSERT INTO tb_categorias(tipo,secao)
VALUES("outros","Hortifruti");
SELECT * FROM tb_categorias;
-- Exercicio 5
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("carambola",30,"2022-11-22",6.00,1);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("maça",30,"2022-11-22",4.00,1);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("uva",30,"2022-11-23",3.00,1);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("vinho",30,"2022-10-24",140.00,4);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Pimentão",30,"2022-11-25",12.00,2);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Sazon legumes",30,"2022-11-26",6.00,3);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("ovo satoshi",30,"2022-11-27",10.00,5);

INSERT INTO tb_produtos(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Alho poró",30,"2022-11-28",13.00,3);

-- Exercicio 6

SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Exercicio 7

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- Exercicio 8

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Exercicio 9

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Exercicio 10

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tipo LIKE "fruta";