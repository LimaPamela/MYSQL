CREATE DATABASE db_casas_saopaulo; 
USE db_casas_sao_paulo;

CREATE TABLE db_casas_saopaulo(
	id bigint auto_increment primary key,
    produto varchar(255),
    data_entrada date,
    quant_estoque int,
    valor decimal(5,2)
);

SELECT * FROM  db_casas_saopaulo;
INSERT INTO db_casas_saopaulo(produto,data_entrada,quant_estoque,valor)VALUES("Sofá 3 lugares", "2022-01-15",100,2000.9);	
INSERT INTO db_casas_saopaulo(produto,data_entrada,quant_estoque,valor)VALUES("colchão casal", "2022-02-28",50,1000.0);	
INSERT INTO db_casas_saopaulo(produto,data_entrada,quant_estoque,valor)VALUES("fogão 4 bocas", "2022-03-01",30,1200.4);	
INSERT INTO db_casas_saopaulo(produto,data_entrada,quant_estoque,valor)VALUES("geladeira frost free", "2022-04-11",35,4000.5);	

SELECT * FROM db_casas_saopaulo WHERE valor > 500.0;
SELECT * FROM db_casas_saopaulo WHERE valor < 500.0;

UPDATE db_casas_saopaulo SET valor= 3500.0 WHERE id=4;
SELECT * FROM db_casas_saopaulo;