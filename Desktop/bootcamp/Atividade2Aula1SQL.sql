-- exercicio 1
CREATE DATABASE db_ecommerce;

USE db_ecommerce;
-- exercicio 2

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    garantia VARCHAR(255) NOT NULL,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

-- exercicio 3

INSERT INTO tb_produtos(nome, quantidade, garantia,preco) 
VALUES("PC Gamer",30,"1 ano",8000.00);

INSERT INTO tb_produtos(nome, quantidade, garantia,preco) 
VALUES("teclado",20,"30 dias",180.00);

INSERT INTO tb_produtos(nome, quantidade, garantia,preco) 
VALUES("Mouse",10,"30 dias",80.00);

INSERT INTO tb_produtos(nome, quantidade, garantia,preco) 
VALUES("Cadeira Gamer",8,"1 ano",1800.00);

SELECT * FROM tb_produtos;
-- Exercicio 4
SELECT * FROM tb_produtos WHERE preco > 500;

-- Exercicio 5
SELECT * FROM tb_produtos WHERE preco < 500;

-- exercicio 6
UPDATE tb_RH SET salario = 800.00 WHERE id = 3;