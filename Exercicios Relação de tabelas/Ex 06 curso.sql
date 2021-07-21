create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria( 
id bigint auto_increment,
descricao varchar(255) not null,
tipo varchar(255) not null,
localidade varchar(255) not null,
primary key (id) 
);

insert into tb_categoria (descricao,tipo,localidade) values ("Curso Lógica e Programação","Presencial","São Paulo");
insert into tb_categoria (descricao,tipo,localidade) values ("Curso Matemática","Distancial","Santos");
insert into tb_categoria (descricao,tipo,localidade ) values ("Curso Java","Distancial","Mato Grosso");
insert into tb_categoria (descricao,tipo,localidade ) values ("Curso Java Generation","Distancial","São Paulo");
insert into tb_categoria (descricao,tipo,localidade ) values ("Curso Ingles","Presencial","Minas Gerais");

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment, 
nome varchar (255) not null,
preco decimal(8,2) not null,
qnthrs int not null,
vagas varchar (255) not null, 
dataprocessosele date,
curso_id bigint, 
primary key (id), 
foreign key (curso_id) references tb_categoria (id)  
);  

insert into tb_curso (nome, preco, qnthrs, vagas,dataprocessosele, curso_id) values ("Processo Seletivo Dev Java Junior",0,2190, 120,"2021-06-12", 4);
insert into tb_curso (nome, preco, qnthrs, vagas,dataprocessosele,curso_id) values ("Curso de Logica e Programação ",60.00,220, 240,"2022-03-22", 1);
insert into tb_curso (nome, preco, qnthrs, vagas,dataprocessosele,curso_id) values ("Ingles para Todes",30.00,420, 60,"2021-03-02", 5);
insert into tb_curso (nome, preco, qnthrs, vagas,dataprocessosele, curso_id) values ("Matemática Fácil",40.00,180, 30,"2021-01-02", 2);
insert into tb_curso (nome, preco, qnthrs, vagas,dataprocessosele,curso_id) values ("Curso Ficando Expert ao Java ",130,302, 40,"2021-03-25", 3);



select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome like "%c%";

select tb_curso.nome, tb_curso.preco, tb_curso.qnthrs, tb_curso.vagas, tb_curso.dataprocessosele, tb_categoria.descricao,tb_categoria.localidade ,tb_categoria.tipo
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.curso_id;

select * from tb_curso where curso_id = 4;