CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Exercicio 1
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
promocao varchar(255) NOT NULL,
cosmeticos varchar(255) NOT NULL,

PRIMARY KEY (id)
);

-- Exercicio 2

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
tipo varchar(255) NOT NULL,
valor decimal(6,2),
setor varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
-- Exercicio 3
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
-- Exercicio 4
INSERT INTO tb_categorias(promocao,cosmeticos)
VALUES("8%","Tratamento capilar");

INSERT INTO tb_categorias(promocao,cosmeticos)
VALUES("13%","Hidratante");

INSERT INTO tb_categorias(promocao,cosmeticos)
VALUES("3%","Remedio");

INSERT INTO tb_categorias(promocao,cosmeticos)
VALUES("20%","Fluído reconstrutor");

INSERT INTO tb_categorias(promocao,cosmeticos)
VALUES("4%","Preenchedor facial");

-- exercicio 5

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Adacneclean","Creme Contra acne",8.00,"Acne",1);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Eudora","Hidratante",8.00,"cremes",2);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Roacutan","comprimido",200.00,"Acne",3);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Dipirona","comprimido",10.00,"Dor",3);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Velija","comprimido",8.00,"fibromialgia",3);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Cloridrato de ciclobenzaprina","comprimido",8.00,"relaxante muscular",3);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Eutirox","comprimido",8.00,"Tireóide",3);

INSERT INTO tb_produtos(nome,tipo,valor,setor,categoria_id)
VALUES("Coversiu","comprimido",8.00,"Pressão",3);

-- Exercicio 6
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Exercicio 7

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

-- Exercicio 8

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Exercicio 9

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Exercicio 10

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE cosmeticos LIKE "Remedio";