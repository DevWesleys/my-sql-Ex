create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nacao varchar(255) not null,
raca varchar(255) not null,
velocidade varchar(255) not null,
primary key (id)
);

insert into tb_classe (nacao, raca, velocidade) values ("Mina Dran", "Anão", "Lento");
insert into tb_classe (nacao, raca, velocidade) values ("Vila Irdin", "Humano", "Lento");
insert into tb_classe (nacao, raca, velocidade) values ("Floresta das Sombras", "Elfo", "Rápido");
insert into tb_classe (nacao, raca, velocidade) values ("Vale Boreal","Humano", "Rápido");
insert into tb_classe (nacao, raca, velocidade) values ("Planicie Árida", "Orc", "Médio");
insert into tb_classe (nacao, raca, velocidade) values ("Pantano Reluzente", "Elfo", "Rápido");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque int not null ,
defesa int not null,
classe varchar(255) not null ,
sexo varchar(255) not null,
personagem_id bigint,
primary key (id),
foreign key (personagem_id) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Astolfo", 1500 , 1100 , "Guerreiro" , "Masculino",1);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Hera", 1700 , 400 , "Ladino" , "Feminino",3);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Irina", 2400 , 1900 , "Clériga" , "Feminino",2);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Cinder", 1100 , 2400 , "Paladino" , "Feminino",6);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Destroyer", 2500 , 1100 , "Berserker" , "Masculino",5);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Artorias", 20000 , 11500 , "Archer", "Masculino",4);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Sekiro", 18700 , 5100 , "Ninja" , "Masculino",6);
insert into tb_personagem (nome, ataque, defesa, classe, sexo, personagem_id) values ("Saber", 15900 , 10000 , "Espadachin" , "Feminino",4);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000; 

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome,tb_personagem.classe, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.sexo , tb_classe.raca, tb_classe.nacao, tb_classe.velocidade from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.personagem_id;

select tb_personagem.nome,tb_personagem.classe, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.sexo , tb_classe.raca, tb_classe.nacao, tb_classe.velocidade from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.personagem_id where tb_classe.id = 4;









 
