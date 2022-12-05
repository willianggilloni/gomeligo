CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

-- Exercicio1
CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
funcao varchar(255) NOT NULL,
PRIMARY KEY (id)
);
-- Exercicio 2
CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
poderDeDefesa int,
poderDeAtaque int,
sexo varchar(255) NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
-- Exercicio 4
INSERT INTO tb_classes (classe,funcao)
VALUES ("Clérigo","curandeiro");

INSERT INTO tb_classes (classe,funcao)
VALUES ("Guerreiro","Lutador");

INSERT INTO tb_classes (classe,funcao)
VALUES ("paladino","Tank");

INSERT INTO tb_classes (classe,funcao)
VALUES ("Mago","Lutador");

INSERT INTO tb_classes (classe,funcao)
VALUES ("Bardo","Suporte");

SELECT * FROM tb_classes;
-- Exercicio 5
INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Luiz",36,2000,3000,"Masculino",1);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Matheus",28,1000,2000,"Masculino",1);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Willian",33,8000,3000,"Masculino",2);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Marcos",36,3000,3000,"Masculino",2);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Thiago",31,2500,2800,"Masculino",3);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Victor",26,500,2300,"Masculino",3);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Leo",24,400,800,"Masculino",4);

INSERT INTO tb_personagens (nome, idade,poderDeDefesa,poderDeAtaque,sexo, classe_id)
VALUES ("Edu",28,3000,3000,"Masculino",5);

SELECT * FROM tb_personagens;

-- Exercicio 6
SELECT * FROM tb_personagens WHERE poderDeAtaque > 2000;

-- Exercicio 7
SELECT * FROM tb_personagens WHERE poderDeDefesa BETWEEN 1000 AND 2000;

-- Exercicio8
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- Exercicio 9
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- Exercicio9

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE classe LIKE "Paladino";


