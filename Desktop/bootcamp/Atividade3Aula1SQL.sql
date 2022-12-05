-- exercicio 1

CREATE DATABASE db_escola;

use db_escola;
-- exercicio 2
CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    idade int,
    nota int,
    sala int,
    PRIMARY KEY (id)
);
-- exercicio 3
INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("willian","Gilloni",33,8,3);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Eduardo","DIas",38,8,3);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Thiago","Ariça",32,6,3);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Luiz","Gilloni",36,8,2);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Luiz","domingos",80,7,3);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Matheus","Da Silva",28,4,3);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Everton","Souza",38,8,1);

INSERT INTO tb_estudantes(nome, sobrenome,idade, nota,sala) 
VALUES("Stefano","Nogueira",40,2,3);

SELECT * FROM tb_estudantes;
-- exercicio 4
SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 8 WHERE id = 6;