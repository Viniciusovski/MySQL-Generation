/*===CRIANDO O BANCO===*/
create DATABASE db_rh;

use db_rh;
/*===CRIANDO A TABELA FUNCIONARIOS===*/
CREATE TABLE tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(420) not null,
    setor varchar(20),
    funcao varchar(20),
    salario float(6), 
    
    primary key(id)
);

ALTER TABLE tb_funcionarios MODIFY salario decimal(6,2);

/*===POPULANDO A TABELA===*/
INSERT INTO tb_funcionarios (nome, setor, funcao, salario) VALUES ("Troy", "Eletrodomesticos", "Vendedor", 1500);

INSERT INTO tb_funcionarios (nome, setor, funcao, salario) VALUES ("Gabriela", "Piscina", "Salva-Vidas", 2500);
INSERT INTO tb_funcionarios (nome, setor, funcao, salario) VALUES ("Chad", "Basebol", "Professor", 3500);
INSERT INTO tb_funcionarios (nome, setor, funcao, salario) VALUES ("Ryan", "Dança", "Coreográfo", 2000);
INSERT INTO tb_funcionarios (nome, setor, funcao, salario) VALUES ("Sharpay", "Teatro", "Atriz", 2000);

/*===SELECTS===*/
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

/*===ATUALIZAR DADO===*/
UPDATE tb_funcionarios SET salario = 2100 WHERE id = 5;