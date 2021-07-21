create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria( 
id bigint auto_increment,
descricao varchar(255) not null,
tipo varchar(255) not null,
localidade varchar(255) not null,
primary key (id) 
);

insert into tb_categoria (descricao,tipo,localidade) values ("Tv","Eletronico","São Paulo");
insert into tb_categoria (descricao,tipo,localidade) values ("Bicicleta","Veiculo","Santa Catarina");
insert into tb_categoria (descricao,tipo,localidade ) values ("Mesa","Movel","Bahia");
insert into tb_categoria (descricao,tipo,localidade ) values ("Maquina de Lavar","Eletrodomestico","Rio de Janeiro");
insert into tb_categoria (descricao,tipo,localidade ) values ("Video Games","Eletrodomestico","Guarulhos");

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment, 
nome varchar (255) not null,
preco int not null,
qntproduto int not null,
cor varchar (255) not null, 
entrega varchar(255) not null,
produto_id bigint, 
primary key (id), 
foreign key (produto_id) references tb_categoria (id)  
);  

insert into tb_produto (nome, preco, qntProduto, cor,entrega, produto_id) values ("LG CX",4000,5, "Preto","Caminhão", 1);
insert into tb_produto (nome, preco, qntProduto, cor,entrega, produto_id) values ("Caloi Vulcan",1350,15, "Preto - Vermelho","Caminhão", 2);
insert into tb_produto (nome, preco, qntProduto, cor,entrega, produto_id) values ("Xbox Series X",4800,12, "Branco","Carro", 5);
insert into tb_produto (nome, preco, qntProduto, cor,entrega, produto_id) values ("Maquina de Lavar Brastemp",1200,5, "Branca","Caminhão",4);
insert into tb_produto (nome, preco, qntProduto, cor,entrega, produto_id) values ("Mesa Comum",55,7, "Marrom","Caminhão", 3);
insert into tb_produto (nome, preco, qntProduto, cor,entrega, produto_id) values ("Ps5",5200,20, "Branco - Preto","Caminhão", 5);

select * from tb_produto;


select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.qntProduto, tb_produto.cor, tb_produto.entrega, tb_categoria.descricao,tb_categoria.localidade ,tb_categoria.tipo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;

select * from tb_produto where produto_id = 5;