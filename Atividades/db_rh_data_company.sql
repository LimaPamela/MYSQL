CREATE DATABASE db_data_company;
USE db_data_company;

CREATE TABLE db_data_company(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
	salario decimal (10,2),
    cargo varchar(255)
);

SELECT * FROM  db_data_company;
INSERT INTO db_data_company(nome,data_nascimento,salario,cargo)VALUES("Maria Flor", "1982-11-21",1999.0,"Técnico de Produção I");
INSERT INTO db_data_company(nome,data_nascimento,salario,cargo)VALUES("Manuela Silva", "1992-05-12",5400.0," Analista Comercial I");
INSERT INTO db_data_company(nome,data_nascimento,salario,cargo)VALUES("Pedro Miguel","1987-11-14", 2001.0,"Assistente Administrativo");	
INSERT INTO db_data_company(nome,data_nascimento,salario,cargo)VALUES("Felipe Santos", "1975-08-01",6644.0," Analista de Dados");
INSERT INTO db_data_company(nome,data_nascimento,salario,cargo)VALUES("Pamela Lima", "1993-06-15", 10000.0,"Analista de BI");	

SELECT * FROM db_data_company WHERE salario > 2000.0;
SELECT * FROM db_data_company WHERE salario < 2000.0;

UPDATE db_data_company SET salario=3000.0 WHERE id=3;
