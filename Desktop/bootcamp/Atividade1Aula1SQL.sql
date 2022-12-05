-- exercicio 1
CREATE DATABASE db_RH;
USE db_RH;
-- exercicio 2

CREATE TABLE tb_RH(
	id bigint auto_increment,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    pis VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

-- exercicio 3

INSERT INTO tb_RH(nome, sobrenome, data_nascimento,pis,salario) 
VALUES("Willian","Guimarães Gilloni","1989-10-12","88888888",10000.00);

INSERT INTO tb_RH(nome, sobrenome, data_nascimento,pis,salario) 
VALUES("Marcos","Errada" ,"2088-06-02",33333333,1500.00);

INSERT INTO tb_RH(nome, sobrenome, data_nascimento,pis,salario) 
VALUES("Luiz","Domingos Gilloni","1968-10-22",44444444,1000.00);

INSERT INTO tb_RH(nome, sobrenome, data_nascimento,pis,salario) 
VALUES("Eduardo","Dias","1994-01-22",11111111,10000.00);

INSERT INTO tb_RH(nome, sobrenome, data_nascimento,pis,salario) 
VALUES("Thiago","Ariça","1990-04-18",22222222,10000.00);

SELECT * FROM tb_RH;
-- Exercicio 4
SELECT * FROM tb_RH WHERE salario > 2000;
-- Exercicio 5
SELECT * FROM tb_RH WHERE salario < 2000;
-- exercicio 6
UPDATE tb_RH SET salario = 800.00 WHERE id = 3;