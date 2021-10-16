select * from category;

select id from artist where name = "ariana grande";
update category set work_name = "Indigo", artist = 28 where id = 3;

insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "ASTROWORLD", "Album", 1, 6);
insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "IGOR", "Album", 1, 15);

insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "Lover", "Album", 1, 1);
insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "No.6 Collaborations Projetc", "Album", 1, 5);
insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "reputation", "Album", 1, 1);
insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "thank u, next", "Album", 1, 2);
insert into category(name, work_name, type_work, award, artist) values ("Album of the Year", "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?", "Album", 1, 
(select id from artist where name = "Billie Eilish"));

update category set winner = true where id = 4;

select category.name as Category_Name, category.work_name, artist.name as Artist from category inner join artist on artist.id = category.artist where winner = 1;
