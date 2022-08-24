/*Comando de criação de banco de dados > DEFINIÇÃO*/
CREATE DATABASE db_escola_generation;

/*Seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunos(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);
/**MANIPULAÇÃO
Seleciona todos os dados da tabela
*/
SELECT * FROM tb_alunos;

/*Inserção de dados dentro da tabela (8 registros)*/
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Pamela Santos", "1993-06-15",57,9.9);	
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Pamela Santos", "1993-06-15",57,9.9);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Viinicius Santos", "1992-11-02",57,7.9);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Enzo Lorenzo", "2000-01-05",57,7.9);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Enzo Lorenzo", "2000-01-05",57,7.9);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Joaquim Bandeira", "1999-10-12",57,5.9);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("Aparecida Cida", "2002-05-22",57,6.9);
INSERT INTO tb_alunos(nome,data_nascimento,turma,nota)VALUES("José Silva", "1995-07-30",57,9.9);

/*Seleciona todos os dados da tabela e ONDE a nota for maior que 7*/
SELECT * FROM tb_alunos WHERE nota >7;
SELECT * FROM tb_alunos WHERE nota <7;

UPDATE tb_alunos SET nota=9.9 WHERE id=1;
UPDATE tb_alunos SET nota=8.9 WHERE id=3;
UPDATE tb_alunos SET nota=7.9 WHERE id=4;
UPDATE tb_alunos SET nota=5.9 WHERE id=6;
UPDATE tb_alunos SET nota=6.9 WHERE id=7;
UPDATE tb_alunos SET nota=9.9 WHERE id=8;

UPDATE tb_alunos SET nome="Valentina Maria",data_nascimento="1989,12,05" WHERE id=2;
UPDATE tb_alunos SET nome="Alfredo Lima",data_nascimento="2000,01,17" WHERE id=5;
SELECT * FROM tb_alunos;

/**SET SQL_SAFE_UPDATES = 0;
UPDATE tb_alunos SET nota=5;
SELECT * FROM tb_alunos;*/
