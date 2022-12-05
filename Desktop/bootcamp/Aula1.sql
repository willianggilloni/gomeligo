-- Criando banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade,preco) 
VALUES("tomate",100,"2022-11-14",8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade,preco) 
VALUES("banana",100,"2022-11-12",4.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade,preco) 
VALUES("carambola",100,"2022-11-13",3.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade,preco) 
VALUES("uva",20,"2022-11-18",2.80);

SELECT * FROM tb_produtos;

SELECT nome,quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome = "tomate";

SELECT * FROM tb_produtos WHERE preco > 5.00;

SHOW CREATE DATABASE db_quitanda;

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos MODIFY preco decimal(6,2); -- 0000.00 / 4000.00 / 2.90

ALTER TABLE tb_produtos DROP descricao;

INSERT INTO tb_produtos(nome, quantidade, data_validade,preco) 
VALUES("uva",20,"2022-11-18",2.90);