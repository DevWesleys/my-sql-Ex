create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria( 
id bigint auto_increment,
descricao varchar(255) not null,
qualidade varchar(255) not null,
localidade varchar(255) not null,
primary key (id) 
);

insert into tb_categoria (descricao,qualidade,localidade) values ("Aves","Bem Conservada","São Paulo");
insert into tb_categoria (descricao,qualidade,localidade) values ("Suinos","Meio Suja","Amazonas");
insert into tb_categoria (descricao,qualidade,localidade ) values ("Bovinos","Otimo estado","Parana");
insert into tb_categoria (descricao,qualidade,localidade ) values ("Vegetariano","Organico","Santa Catarina");

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment, 
nome varchar (255) not null,
preco decimal(6,2) not null,
qntproduto int not null,
validade date, 
entrega varchar(255),
produto_id bigint, 
primary key (id), 
foreign key (produto_id) references tb_categoria (id)  
);  

insert into tb_produto (nome, preco, qntProduto, validade,entrega, produto_id) values ("Asa de Frango",40.00,30, "2021-09-22","Moto Boy", 1);
insert into tb_produto (nome, preco, qntProduto, validade,entrega, produto_id) values ("Bacon",60.00,35, "2021-05-02","Moto Boy", 2);
insert into tb_produto (nome, preco, qntProduto, validade,entrega, produto_id) values ("Peito de Frango ",15.00,10, "2021-03-15","Van", 1);
insert into tb_produto (nome, preco, qntProduto, validade,entrega, produto_id) values ("Cupim",70.00,50, "2021-10-27","Van", 3);
insert into tb_produto (nome, preco, qntProduto, validade,entrega, produto_id) values ("Brocolis",10.00,5, "2021-08-09","Moto Boy", 4);

select * from tb_produto;


select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.qntProduto, tb_produto.validade, tb_produto.entrega, tb_categoria.descricao,tb_categoria.localidade ,tb_categoria.qualidade
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;

select tb_produto.nome, tb_produto.preco, tb_produto.qntProduto, tb_produto.validade, tb_produto.entrega, tb_categoria.descricao,tb_categoria.localidade ,tb_categoria.qualidade
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where tb_categoria.id = 1;

