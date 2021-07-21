create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
localidade varchar(255) not null,
entrega varchar(255) not null,
lojas int not null,
primary key (id)
);


insert into tb_categoria (localidade,entrega,lojas) values ("São Paulo" ,"Seg a Sexta", 3);
insert into tb_categoria (localidade,entrega,lojas) values ("Campinas" ,"Semana Toda", 4);
insert into tb_categoria (localidade,entrega,lojas) values ("Amazonas" ,"Semana Toda", 5);
insert into tb_categoria (localidade,entrega,lojas) values ("Porto Alegre" ,"Seg a Sexta", 7);
insert into tb_categoria (localidade,entrega,lojas) values ("Curitiba" ,"Seg a Sexta", 2);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
dose varchar(255) not null,
indicada varchar(255) not null,
fabricante varchar(255) not null,
produto_id bigint,
primary key (id),
foreign key (produto_id) references tb_categoria(id)
);

insert into tb_produto (nome,preco,dose,indicada,fabricante,produto_id) values ("Dipirona", 65.00 ,"4 a 6 horas","Febre, Dor de Cabeça , Cólica, Dor Muscular","Eurofarma",1);
insert into tb_produto (nome,preco,dose,indicada,fabricante,produto_id) values ("Doril", 70.00 ,"6 em 6 horas","Febre, Dor","Hypera Pharma",2);
insert into tb_produto (nome,preco,dose,indicada,fabricante,produto_id) values ("Benegrip", 28.00 ,"4 a 6 horas","Febre, Dor de Cabeça , Anti Alergico","Hypera Pharma",3);
insert into tb_produto (nome,preco,dose,indicada,fabricante,produto_id) values ("Dorflex", 58.00 ,"6 em 6 horas","Febre, Dor de Cabeça , Cólica, Dor Muscular","Eurofarma",4);
insert into tb_produto (nome,preco,dose,indicada,fabricante,produto_id) values ("Dipirona", 15.00 ,"4 a 6 horas"," Dor de Cabeça, Dor Muscular","Sanofi Aventis",5);
insert into tb_produto (nome,preco,dose,indicada,fabricante,produto_id) values ("Neosaldina", 45.00 ,"6 em 6 horas"," Dor de Cabeça, Enxaqueca","Takeda",3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select tb_produto.nome, tb_produto.dose, tb_produto.preco, tb_produto.indicada, tb_produto.fabricante, tb_categoria.entrega,tb_categoria.localidade ,tb_categoria.lojas
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;

select * from tb_produto where indicada like "%Dor Muscular%";

select * from tb_produto where produto_id = 3;