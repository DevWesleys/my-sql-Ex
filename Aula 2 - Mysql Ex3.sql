create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int,
hobby varchar(255),
nota decimal,
sonho varchar(255),
primary key (id)
);


insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Carlos", 14,"Ler", 10, "Ser Astronauta");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Aline", 17,"Ver Séries", 8, "Ser atriz");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Hugo", 11,"Jogar Futebol", 7, "Ser Jogador de Futebol");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Angela", 18,"Estudar", 10, "Viajar para Europa");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Ingrid", 16,"Estudar ingles", 9, "Viajar para Disney");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Fernando", 12,"Brincar na rua",  7, "Ser Policial");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Daiane", 15,"Ouvir Musica", 7, "Ser Cantora");
insert into tb_alunos(nome, idade, hobby, nota, sonho) values ("Junior", 16,"Ficar na rua", 5, "Ser Funkeiro");

select * from tb_alunos;

select * from tb_alunos where nota < 7;
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota = 7;

update tb_alunos set nota = 8 where id = 1;
update tb_alunos set nota = 5 where id = 3;

