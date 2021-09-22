create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
classe varchar(255),
poder varchar(255),
arma varchar(255),
primary key(id)
);

insert into tb_classe(classe,poder,arma)values("Górgona","empedrar","olhos");
insert into tb_classe(classe,poder,arma)values("Bruxo","teletransporte","cajado");
insert into tb_classe(classe,poder,arma)values("Arqueiro","flecha explosiva","arco e flecha");
insert into tb_classe(classe,poder,arma)values("Cavaleiro","força bruta","espada");
insert into tb_classe(classe,poder,arma)values("Curandeira","curar","grimório");

select*from tb_classe;

create table tb_personagem (
id bigint auto_increment,
nick varchar(255),
defesa int(5),
ataque int(5),
nivel int(5),
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Darkclose",2500,3500,59,2);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Gonkun",2500,3500,59,2);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Medusa",5000,4000,22,1);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Fliu",1500,4000,59,3);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("B4dH0rse",5000,3500,59,1);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Luca",1500,3500,36,3);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Anana",5000,4000,167,4);
insert into tb_personagem(nick,defesa,ataque,nivel,classe_id)values("Sleepie",4000,2000,100,5);

select*from tb_personagem;

select*from tb_personagem where ataque>2000;

select*from tb_personagem where defesa between 1000 and 2000;

select*from tb_personagem where nick like "%c%";

select tb_classe.classe,tb_classe.poder, tb_classe.arma
from tb_personagem inner join tb_classe
on tb_classe.id=tb_personagem.classe_id;

select nick from tb_personagem where classe_id=3;