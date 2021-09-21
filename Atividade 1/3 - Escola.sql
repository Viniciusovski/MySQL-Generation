create database db_escola;

use db_escola;

create table tb_estudante(
	id bigint(5) auto_increment,
    nome varchar(50) not null,
    curso varchar(20) not null,
    turma int(3),
    nota float(2,2),
    
    primary key (id)
);
alter table tb_estudante modify nota float(5,2);

insert into tb_estudante (nome, curso, turma, nota) values ("Chaves", "Pedagogia", 8, 5.0);

insert into tb_estudante (nome, curso, turma, nota) values ("Quico", "Artes Cenicas", 30, 6.5);
insert into tb_estudante (nome, curso, turma, nota) values ("Chiquinha", "História", 10, 6);
insert into tb_estudante (nome, curso, turma, nota) values ("Nhonho", "Biologia", 12, 8.5);
insert into tb_estudante (nome, curso, turma, nota) values ("Pópis", "Artes Cenicas", 10, 7.5);
insert into tb_estudante (nome, curso, turma, nota) values ("Godinez", "Geografia", 11, 5.3);
insert into tb_estudante (nome, curso, turma, nota) values ("Paty", "Biologia", 13, 5.0);
insert into tb_estudante (nome, curso, turma, nota) values ("Seu Madruga", "Letras", 9, 7);

select * from tb_estudante where nota > 7;
select * from tb_estudante where nota < 7;
select * from tb_estudante where nota = 7;

