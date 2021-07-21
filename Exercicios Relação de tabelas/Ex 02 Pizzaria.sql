create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
localidade varchar(255) not null,
entrega varchar(255) not null,
custoprod decimal(8,2) not null,
primary key (id)
);


insert into tb_categoria (localidade, entrega, custoprod) values ("São Paulo","Ifood e Própria", 40.00);
insert into tb_categoria (localidade, entrega, custoprod) values ("Rio de Janeiro","Própria", 31.00);
insert into tb_categoria (localidade, entrega, custoprod) values ("Salvador","Ifood", 25.00);
insert into tb_categoria (localidade,entrega, custoprod) values ("Curitiba","Própria", 20.00);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
tamanho varchar(255) not null,
ingrediente varchar(255) not null,
preco decimal(8,2) not null,
tipo varchar (255) not null,
pizza_id bigint,
primary key (id),
foreign key (pizza_id) references tb_categoria (id)
);

insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Baiana","Grande","Pimenta, Ovo , Mussarela etc..", 45.00 , "Salgado",3);
insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Vegetariana","Média","Tomate,Mussarela, Pimentão ,Rúcula  etc..", 25.00 , "Salgado",4);
insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Portuguesa","Grande","Presunto, Ovo , Mussarela , Tomate etc..", 50.00 , "Salgado",3);
insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Atum","Grande","Atum Solido, Cebola , Mussarela etc..", 55.00 , "Salgado",1);
insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Calabresa","Média","Mussarela, Calabresa , Cebola etc..", 41.00 , "Salgado",2);
insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Chocolate","Pequena","Chocolate ,Morango , etc..", 40.00 , "Doce",2);
insert into tb_pizza (nome, tamanho, ingrediente, preco, tipo,pizza_id) values ("Pizza Nutela","Média","Nutela, Morango , etc..", 40.00 , "Doce",3);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select tb_pizza.nome, tb_pizza.tipo, tb_pizza.preco, tb_pizza.tamanho, tb_categoria.localidade, tb_categoria.entrega,tb_categoria.custoprod
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id;

select * from tb_pizza where tipo like "%Doce%";

select * from tb_pizza where tipo like "%Salgado%";

