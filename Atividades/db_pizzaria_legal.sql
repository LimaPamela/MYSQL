CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizza( 
	id bigint auto_increment primary key,
	sabor varchar (255),
	preco decimal (6,2),
	massa varchar (255),
	quant int,
	categoria_id bigint,
	
	FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id) 
);

SELECT* FROM tb_categorias;

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada", "Brotinho", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada", "Brotinho", false);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada", "Média", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada", "Média", false);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada", "Grande", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada", "Grande", false);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce", "Brotinho", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce", "Média", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce", "Grande", true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana", "Brotinho", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana", "Brotinho", false);


SELECT* FROM tb_pizza;
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Frango C/ Catupiry", 40.20, "Tradiconal", 3, 1);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Marguerita", 40.20, "Fina", 5, 2);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Calabresa", 43.79, "Tradiconal", 3, 3);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Mussarela", 43.79, "Fina", 5, 4);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Palmito", 45.99, "Tradiconal", 4, 5);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Bahiana", 44.69, "Fina", 3, 6);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Romeu e Julieta", 43.00, "Tradiconal", 2, 7);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Nutella", 43.00, "Fina", 5, 8);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Beijinho", 42.00, "Tradiconal", 3, 9);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Brocolis", 40.20, "Tradiconal", 4, 10);
INSERT INTO tb_pizza(sabor, preco, massa, quant, categoria_id)VALUES("Escarola", 40.20, "Tradiconal", 2, 11);

/** estrutura e umna consulta SELECT > Condição> Ordenaão
SELECT * FROM tb_pizza WHERE preco > 45.00 ORDER BY sabor ASC;
SELECT * FROM tb_pizza WHERE preco > 45.00 ORDER BY preco DESC;
*/

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco < 45.00;
SELECT sabor, preco FROM tb_pizza WHERE preco < 45.00;
SELECT * FROM tb_pizza WHERE preco >= 50.00 AND preco <= 100.00; 
SELECT * FROM tb_pizza WHERE preco BETWEEN 30.00 AND 43.00;

SELECT * FROM tb_pizza  WHERE sabor LIKE "%M%"; /* Conter uma letra (%M%), (M% - Início da palavra), (%M - No final)*/

/* Junção das categorias > o que tem em comun entre as tabelas*/
SELECT * FROM tb_pizza INNER JOIN tb_categorias ON tb_pizza.categoria_id = tb_categorias.id
ORDER BY sabor;

SELECT * FROM tb_pizza INNER JOIN tb_categorias ON tb_pizza.categoria_id = tb_categorias.id  where descricao = "Doce"
ORDER BY sabor;
SELECT * FROM tb_pizza INNER JOIN tb_categorias ON tb_pizza.categoria_id = tb_categorias.id  where tb_categorias.id = 9
ORDER BY sabor;


