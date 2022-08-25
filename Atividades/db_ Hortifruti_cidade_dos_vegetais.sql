CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	tipo varchar (255), /* Fruta, Legumes, Verduras*/
	quant_item int
);

CREATE TABLE tb_produtos( 
	id bigint auto_increment primary key,
	item varchar (255), /* Fruta (Laranja, Banana, Morango), Verduras (Alface, Coentro, Couve-flor), Legumes (batata, mandioca, cenoura) */
	preco decimal (6,2),
	categoria_id bigint,
	
	FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id) 
);

SELECT* FROM tb_categorias;
INSERT INTO tb_categorias(tipo, quant_item)VALUES("Fruta", 6);
INSERT INTO tb_categorias(tipo, quant_item)VALUES("Legumes", 3);
INSERT INTO tb_categorias(tipo, quant_item)VALUES("Verduras", 3);

SELECT* FROM tb_produtos;
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("Laranja", 51.00, 1);
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("Banana", 75.00, 1);
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("Morango", 101.00, 1);

INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("Alface", 15.23, 2);
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("Coentro", 10.10, 2);
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("Couve-flor", 20.49, 2);

INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("batata", 149.00, 3);
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("mandioca", 99.00, 3);
INSERT INTO tb_produtos(item, preco, categoria_id)VALUES("cenoura", 1.00, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco < 45.00;
SELECT * FROM tb_produtos WHERE preco >= 50.00 AND preco <= 150.00; 
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_produtos  WHERE item LIKE "%c%"; 

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
ORDER BY preco;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id  where item = "laranja";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id  where tb_categorias.id = 1;
