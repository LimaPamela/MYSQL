CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vidas;

CREATE TABLE tb_cadastro(
	id bigint auto_increment primary key,
	nome varchar (255),
	data_nasc date
);

CREATE TABLE tb_cursos( 
	id bigint auto_increment primary key,
	curso varchar (255),
	valor decimal (6,2),
    descricao varchar (255), /* Curso Livre, técnico, Bacharelado, Licencatura, Mestrado, Doutorado */
	cadastro_id bigint,
	
	FOREIGN KEY(cadastro_id) REFERENCES tb_cadastro(id) 
);

SELECT* FROM tb_cadastro;
INSERT INTO tb_cadastro(nome, data_nasc)VALUES("Luna Almeida", "1986-08-04");
INSERT INTO tb_cadastro(nome, data_nasc)VALUES("Pietra Braga", "1988-05-14");
INSERT INTO tb_cadastro(nome, data_nasc)VALUES("Henry Costa", "1988-07-18");
INSERT INTO tb_cadastro(nome, data_nasc)VALUES("Pietro Magalhães", "1991-08-25");
INSERT INTO tb_cadastro(nome, data_nasc)VALUES("Helena Ribeiro", "1993-05-18");

SELECT* FROM tb_cursos;
INSERT INTO tb_cursos(curso,valor,descricao, cadastro_id)VALUES("Introdução à MY SQL", 300.95, "Curso Livre", 1);
INSERT INTO tb_cursos(curso,valor,descricao, cadastro_id)VALUES("Tecnologia da Informação", 613.82, "Técnico", 2);
INSERT INTO tb_cursos(curso,valor,descricao, cadastro_id)VALUES("Analista de Dados ", 1321.17, "Bacharelado", 3);
INSERT INTO tb_cursos(curso,valor,descricao, cadastro_id)VALUES("Gestão Empresarial", 1642.12, "Licenciatura", 3);
INSERT INTO tb_cursos(curso,valor,descricao, cadastro_id)VALUES("DevOps", 4594.80, "Mestrado",4);
INSERT INTO tb_cursos(curso,valor,descricao, cadastro_id)VALUES("Ciência da Computação", 5654.25, "Doutorado", 5);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor < 500.00;
SELECT * FROM tb_cursos WHERE valor >= 600.00 AND valor <= 1000.00; 
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos  WHERE curso LIKE "%J%"; 
SELECT * FROM tb_cadastro  WHERE nome LIKE "%a%"; 

SELECT * FROM tb_cursos INNER JOIN tb_cadastro ON tb_cursos.cadastro_id = tb_cadastro.id;

SELECT * FROM tb_cursos INNER JOIN tb_cadastro ON tb_cursos.cadastro_id = tb_cadastro.id  WHERE curso = "DevOps";

SELECT * FROM tb_cursos INNER JOIN tb_cadastro ON tb_cursos.cadastro_id = tb_cadastro.id  where tb_cadastro.id = 1;
