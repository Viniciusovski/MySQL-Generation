select * from artist;

select count(ethnicity) from artist where ethnicity = "white";
select count(ethnicity) from artist where ethnicity = "black";
select count(genre) from artist where genre = "male";
select count(genre) from artist where genre = "female";

/***** Grammy 2020 *****/ 
insert into artist(name, genre, ethnicity, type) values ("Taylor Swift", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Billie Eilish", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Jonas Brothers", "Male", "White", "Group");
insert into artist(name, genre, ethnicity, type) values ("Ed Sheeran", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Travis Scott", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Justin Bieber", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Brendon Urie", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Shawn Mendes", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Camila Cabello", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Katy Perry", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Ariana Grande", "Female", "White", "Solo");

insert into artist(name, genre, ethnicity, type) values ("Madonna", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Michael Jackson", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Tyler, the Creator", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Lil Nas X", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("A Boogie wit da Hoodie", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Post Malone", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("6ix9ine", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Drake", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Offset", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Cardi B", "Female", "Black", "Solo");

insert into artist(name, genre, ethnicity, type) values ("Young Thug", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Meek Mill", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Nicki Minaj", "Female", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Iggy Azalea", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Sam Smith", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Chris Brown", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Khalid", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Lizzo", "Female", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Normani", "Female", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Gunna", "Male", "Black", "Solo");

insert into artist(name, genre, ethnicity, type) values ("Mariah Carey", "Female", "Mixed", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Ty Dolla $ign", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("G-Eazy", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Beyoncé", "Female", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Rihanna", "Female", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Luísa Sonza", "Female", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Manu Gavassi", "Female", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Anitta", "Female", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Pabllo Vittar", "Male", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Prince Royce", "Male", "Latin", "Solo");

insert into artist(name, genre, ethnicity, type) values ("Sofia Reyes", "Female", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Rita Ora", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Dilsinho", "Male", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Priscilla Alcântara", "Female", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Gloria Groove", "Male", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Sidoka", "Male", "Latin", "Solo");
insert into artist(name, genre, ethnicity, type) values ("BTS", "Male", "Asian", "Group");
insert into artist(name, genre, ethnicity, type) values ("Halsey", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("SZA", "Female", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Dj Khaled", "Male", "Black", "Solo");

insert into artist(name, genre, ethnicity, type) values ("Bazzi", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Avicci", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Bastille", "Male", "White", "Group");
insert into artist(name, genre, ethnicity, type) values ("Mashmello", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Lil Wayne", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Big Sean", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Martin Garrix", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Macklemore", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Patrick Stump", "Male", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Adele", "Female", "White", "Solo");

insert into artist(name, genre, ethnicity, type) values ("Lorde", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Ava Max", "Female", "White", "Solo");
insert into artist(name, genre, ethnicity, type) values ("DaBaby", "Male", "Black", "Solo");
insert into artist(name, genre, ethnicity, type) values ("Destiny's Child", "Female", "Black", "Group");
insert into artist(name, genre, ethnicity, type) values ("Diante do Trono", "Various", "Various", "Group");
insert into artist(name, genre, ethnicity, type) values ("Queen", "Male", "White", "Group");