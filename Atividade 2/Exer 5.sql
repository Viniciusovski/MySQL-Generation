create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
    nome varchar(255),
    atendente varchar(255),
    
    primary key(id_categoria)
);

create table tb_produto(
	id_produto bigint(5) auto_increment,
    nome varchar(255) not null,
    marca varchar(255),
    preco float(5,2),
    categoria bigint(5),
    
    primary key(id_produto),
    foreign key (categoria) references tb_categoria(id_categoria)  
);

insert into tb_categoria (nome, atendente) values ("Aços para Construção", "Rogério");
insert into tb_categoria (nome, atendente) values ("Argamassas", "Mario");
insert into tb_categoria (nome, atendente) values ("Barreiras de Proteção", "Rodrigo");
insert into tb_categoria (nome, atendente) values ("Caixas d'Água", "Paulo");
insert into tb_categoria (nome, atendente) values ("Cisternas", "Rogério");

insert into tb_produto (nome, preco, categoria) values ("Roupeiro Tulha", 128.56, 1);
insert into tb_produto (nome, preco, categoria) values ("Porta Vassouras", 31.60, 1);
insert into tb_produto (nome, marca, preco, categoria) values ("Argamassa Porcelanato Interno", "Axton", 21.90, 2);
insert into tb_produto (nome, marca, preco, categoria) values ("Argamassa Piso sobre Piso", "Axton", 34.90, 2);
insert into tb_produto (nome, preco, categoria) values ("Barreira de Mesa", 179.90, 3);
insert into tb_produto (nome, marca, preco, categoria) values ("Polietileno 1000L", "Fortlev", 349.90, 4);
insert into tb_produto (nome, marca, preco, categoria) values ("Caixas d'Água 500L", "Fortlev", 219.90, 4);
insert into tb_produto (nome, marca, preco, categoria) values ("Eco Tanque 240L", "Casológica", 219.90, 5);
-- selects
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria = tb_categoria.id_categoria;

select tb_produto.nome as produto, tb_produto.preco, tb_produto.nome as categoria from tb_produto 
inner join tb_categoria on tb_produto.categoria = tb_categoria.id_categoria where tb_categoria.nome like "Argamassas";


    