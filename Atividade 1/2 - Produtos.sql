-- CRIANDO BANCO 
CREATE DATABASE db_ecommerce;

use db_ecommerce;
-- CRIANDO TABELA
CREATE TABLE tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    preco float(6,2) not null,
    marca varchar(20),
    qtd int(6),
    
    primary key(id)
);
-- POPULANDO TABELA
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Sabão", 35, "OMO", 650);

INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Fralda", 16.90, "Pampers", 800);
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Umidificador de Ar", 89.90, "Fisher Price", 50);
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Smart TV LED 42", 1699, "Philco", 120);
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Kit de Ferramentas", 99.90, "Philco", 40);
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Smartphone Moto G60s", 1799, "Motorola", 250);
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Notebook", 4199, "DELL", 30);
INSERT INTO tb_produtos (nome, preco, marca, qtd) VALUES ("Smart TV LED 32", 1479, "LG", 140);
-- SELECTS
select * FROM tb_produtos where preco > 500;
select * FROM tb_produtos where preco < 500;
-- ATUALIZAR DADO
update tb_produtos SET preco = 12.50 WHERE id = 1;


