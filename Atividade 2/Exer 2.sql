create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
    nome varchar(255),
    garcom varchar(255),
    
    primary key(id_categoria)
);

create table tb_pizza(
	id_pizza bigint(5) auto_increment,
    nome varchar(255) not null,
    ingrediente varchar(255),
    preco float(5,2),
    categoria bigint(5),
    
    primary key(id_pizza),
    foreign key (categoria) references tb_categoria(id_categoria)  
);

-- Popular tabela categoria
insert into tb_categoria (nome, garcom) values ("Entrada", "Rogério");
insert into tb_categoria (nome, garcom) values ("Pizza Tradicional", "Mario");
insert into tb_categoria (nome, garcom) values ("Pizza Especial", "Rodrigo");
insert into tb_categoria (nome, garcom) values ("Salada", "Paulo");
insert into tb_categoria (nome, garcom) values ("Sobremesa", "Rogério");
-- Popular tabela pizza
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Pão de Calabesa", "Calabresa", 27, 1);

insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Mussarela", "mussarela", 80, 2);
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Napolitana", "molho de tomate", 89, 2);
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Calabria", "parmesão", 97, 3);
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Favorita", "quatro queijos", 102, 3);
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Primo", "mussarela", 102, 3);
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Carpacio", "molho da casa", 45, 4);
insert into tb_pizza (nome, ingrediente, preco, categoria) values ("Tiramissú", "Creme de queijo", 27, 5);
-- selects
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%C%";

select tb_pizza.nome as produto, tb_pizza.preco, tb_categoria.nome as categoria, tb_categoria.garcom from tb_pizza 
inner join tb_categoria on tb_pizza.categoria = tb_categoria.id_categoria order by tb_pizza.nome;

select tb_pizza.nome as produto, tb_pizza.preco, tb_categoria.nome as categoria, tb_categoria.garcom from tb_pizza 
inner join tb_categoria on tb_pizza.categoria = tb_categoria.id_categoria where tb_categoria.nome like "Pizza Especial";


    