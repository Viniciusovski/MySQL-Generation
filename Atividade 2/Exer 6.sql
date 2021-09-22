create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
    nome varchar(255),
    professor varchar(255),
    
    primary key(id_categoria)
);

create table tb_curso(
    id_curso bigint(5) auto_increment,
    nome varchar(255) not null,
    marca varchar(255),
    preco float(5,2),
    categoria bigint(5),
    
    primary key(id_curso),
    foreign key (categoria) references tb_categoria(id_categoria)  
);

insert into tb_categoria (nome, professor) values ("Java", "Rogério");
insert into tb_categoria (nome, professor) values ("MySql", "Mario");
insert into tb_categoria (nome, professor) values ("HTML e CSS", "Rodrigo");
insert into tb_categoria (nome, professor) values ("Inglês", "Paulo");
insert into tb_categoria (nome, professor) values ("Empregabilidade", "Rogério");

insert into tb_curso (nome, marca, preco, categoria) values ("Laço de Repetição", "Alura", 128.56, 1);
insert into tb_curso (nome, marca, preco, categoria) values ("Vetores e Matrizes", "Alura", 31.60, 1);
insert into tb_curso (nome, marca, preco, categoria) values ("Criação de Tabelas", "Udemy", 21.90, 2);
insert into tb_curso (nome, marca, preco, categoria) values ("Consulta de Tabelas", "Coursera", 34.90, 2);
insert into tb_curso (nome, marca, preco, categoria) values ("Introdução ao HTML", "Alura", 179.90, 3);
insert into tb_curso (nome, marca, preco, categoria) values ("Inglês Avançado", "Fisck", 349.90, 4);
insert into tb_curso (nome, marca, preco, categoria) values ("Inglês Técnico", "CNA", 219.90, 4);
insert into tb_curso (nome, marca, preco, categoria) values ("Curso Quero essa Vaga", "Na Prática", 219.90, 5);
-- selects
select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria on tb_curso.categoria = tb_categoria.id_categoria;

select tb_curso.nome as curso, tb_curso.preco, tb_curso.nome as categoria from tb_curso 
inner join tb_categoria on tb_curso.categoria = tb_categoria.id_categoria where tb_categoria.nome like "Java";
