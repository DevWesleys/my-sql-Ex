create database db_rh;

use db_rh;

create table tb_registro(
id bigint auto_increment,
nome varchar(255),
idade int,
salario int,
peso int,
cidade varchar(255),
primary key (id)
);


insert into tb_registro(nome, idade, salario, peso, cidade) values ("Wesley", 26, 2500, 62, "Cravinhos");
insert into tb_registro(nome, idade, salario, peso, cidade) values ("Loop", 19, 1650, 71, "São Paulo");
insert into tb_registro(nome, idade, salario, peso, cidade) values ("Luiza", 34, 3500, 53, "California");
insert into tb_registro(nome, idade, salario, peso, cidade) values ("Ana", 22, 1500, 59, "Tokyo");
insert into tb_registro(nome, idade, salario, peso, cidade) values ("josé", 43, 7500, 78, "Canada");

select * from tb_registro;

select * from tb_registro where salario < 2000;
select * from tb_registro where salario > 2000;

update tb_registro set salario = 2500 where id = 4;
update tb_registro set salario = 5500 where id = 5;

