create database db_farmacia_do_bem;

use db_farmacia_do_bem;

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


insert into tb_categoria (nome, atendente) values ("Dor e Contusão", "Rogério");
insert into tb_categoria (nome, atendente) values ("Olhos", "Mario");
insert into tb_categoria (nome, atendente) values ("Pele e Mucosa", "Rodrigo");
insert into tb_categoria (nome, atendente) values ("Saúde da Mulher", "Paulo");
insert into tb_categoria (nome, atendente) values ("Saúde do Homem", "Rogério");

insert into tb_produto (nome, marca, preco, categoria) values ("Paracetamol", "Generico", 4.99, 1);

insert into tb_produto (nome, marca, preco, categoria) values ("Timolo", "Generico", 4.17, 2);
insert into tb_produto (nome, marca, preco, categoria) values ("Carmelose", "Genom", 29.62, 2);
insert into tb_produto (nome, marca, preco, categoria) values ("Nistatina", "Generico", 9.90, 3);
insert into tb_produto (nome, marca, preco, categoria) values ("Neomicina", "Medley", 9.87, 3);
insert into tb_produto (nome, marca, preco, categoria) values ("Dexpantenol", "Bepantriz", 8.27, 3);
insert into tb_produto (nome, marca, preco, categoria) values ("Desogestrel", "Generico", 27.26, 4);
insert into tb_produto (nome, marca, preco, categoria) values ("Sildenafila", "Generico", 1.79, 5);
-- selects
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%B%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria = tb_categoria.id_categoria;

select tb_produto.nome as produto, tb_produto.preco, tb_categoria.nome as categoria from tb_produto 
inner join tb_categoria on tb_produto.categoria = tb_categoria.id_categoria where tb_categoria.nome like "Olhos";


    