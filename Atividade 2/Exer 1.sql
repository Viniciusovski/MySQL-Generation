create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagem(
	id_personagem bigint(5) auto_increment,
	nome_personagem varchar(255) not null,
    roupa_personagem varchar(255),
    poder_personagem varchar(255),
    ataque_personagem bigint(5),
    defesa_personagem bigint(5),    
    classe_personagaem bigint(5),
    
    primary key(id_personagem),
    foreign key (classe_personagaem) references tb_classe(id_classe)
);

create table tb_classe(
	id_classe bigint(5) auto_increment,
    nome_classe varchar(255) not null,
    forca int(6),
    
    primary key (id_classe)
);

-- inserindo dados
-- classes
insert into tb_classe (nome_classe, forca) values ("Mago", 100);
insert into tb_classe (nome_classe, forca) values ("Cavalehiro", 85);
insert into tb_classe (nome_classe, forca) values ("Ciclope", 85);
insert into tb_classe (nome_classe, forca) values ("Herói", 120);
insert into tb_classe (nome_classe, forca) values ("Vilão", 120);
select * from tb_classe;
-- personagem
insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Robin", "Armadura", "Magnetismo", 1000, 2000, 1);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Estelar", "Capa Voadora", "Voar", 5000, 8000, 1);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Ravenna", "Armadura", "Telecinese", 3000, 2500, 2);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Ciborque", "Escudo", "Super inteligencia", 8000, 8000, 2);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Mutano", "Capa Voadora", "Raio Lazer", 2000, 2000,2);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Terra", "Lança Chamas", "Manipular a terra", 5000, 2000,2);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Hermione", "Capa Invisibilidade", "Eletricidade", 1000, 4000, 4);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem, classe_personagaem)
values ("Ronnie", "Cajado", "Atravessar superficies", 1000, 1000, 5);

insert into tb_personagem (nome_personagem, roupa_personagem, poder_personagem, ataque_personagem, defesa_personagem)
values ("Lindsey", "Capa", "Atravessar superficies", 1000, 1000);

-- selects
select * from tb_personagem where ataque_personagem > 2000;
select * from tb_personagem where defesa_personagem between 1000 and 2000;
select * from tb_personagem where nome_personagem like "C%";

select tb_personagem.nome_personagem, tb_personagem.roupa_personagem, tb_personagem.ataque_personagem, tb_personagem.defesa_personagem, tb_personagem.classe_personagaem 
from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_personagaem;

select * from tb_personagem where classe_personagaem = 2;

select tb_personagem.nome_personagem, tb_classe.nome_classe from tb_personagem inner join tb_classe 
on tb_classe.id_classe = tb_personagem.classe_personagaem where tb_classe.nome_classe like "Mago";

