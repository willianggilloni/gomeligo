CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;
-- Exercicio 1
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
promocao varchar(255) NOT NULL,
tamanho varchar(255) NOT NULL,

PRIMARY KEY (id)
);

-- Exercicio 2

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
sabor varchar(255) NOT NULL,
valor decimal(6,2),
borda varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
-- Exercicio 3
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
-- Exercicio 4
INSERT INTO tb_categorias(promocao,tamanho)
VALUES("10%","30cm");

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("13%","34cm");

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("15%","38cm");

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("17%","50cm");

INSERT INTO tb_categorias(promocao,tamanho)
VALUES("18%","60cm");

-- Exercicio 5

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Bahianinha","Calabresa",60.00,"Recheada",1);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Nordestina","Carne seca",80.00,"Recheada",2);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Portuguesa","Presunto e ovo",31.00,"Recheada",3);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Marguerita","Mussarela",32.00,"Recheada",4);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Mussarela","Calabresa",32.00,"Recheada",5);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Vegetariana","Legumes",80.00,"Recheada",1);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Nortica","Atum",58.00,"Recheada",2);

INSERT INTO tb_pizzas (nome,sabor,valor,borda,categoria_id)
VALUES ("Brigadeiro","chocolate",20.00,"normal",3);

-- Exercicio 6

SELECT * FROM tb_pizzas WHERE valor > 45;

-- Exercicio 7

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

-- Exercicio 8

SELECT * FROM tb_pizzas WHERE nome LIKE "M%";

-- Exercicio 9

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- Exercicio 10

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tamanho LIKE "60cm";