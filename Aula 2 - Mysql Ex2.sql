create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
peso varchar(255),
cor varchar(255),
preco int,
tipo varchar(255),
primary key (id)
);


insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Celular", "210 g", "Prata", 2000, "Eletronico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Processador", "130 g", "Prata", 1700, "Eletronico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Monitor", "2 kg", "Preto", 450, "Eletronico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Geladeira", "80kg", "Branco", 1500, "Eletrodomestico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Máquina de Lavar", "50 kg", "Branco", 1300, "Eletrodomestico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Placa de Video", "2.5kg", "Preto/Vermelho", 2500, "Eletronico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Carregador", "200 g", "Branco", 15, "Eletronico");
insert into tb_produtos(nome, peso, cor, preco, tipo) values ("Pilhas", "100 g", "Azul", 8, "Eletronico");

select * from tb_produtos;

select * from tb_produtos where preco < 500;
select * from tb_produtos where preco > 500;

update tb_produtos set preco = 1500 where id = 3;
update tb_produtos set preco = 4500 where id = 6;

