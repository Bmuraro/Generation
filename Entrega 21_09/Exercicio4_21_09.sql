create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
estacao varchar(255),
vitamina varchar(255),
tipo varchar(255),
primary key(id)
);

insert into tb_categoria(estacao,vitamina,tipo)values("inverno", "B1", "climatérica");
insert into tb_categoria(estacao,vitamina,tipo)values("verão", "B2", "climatérica");
insert into tb_categoria(estacao,vitamina,tipo)values("outono", "B3", "climatérica");
insert into tb_categoria(estacao,vitamina,tipo)values("primavera", "C", "não climatérica");
insert into tb_categoria(estacao,vitamina,tipo)values("inverno", "B6", "não climatérica");

select*from tb_categoria;

create table tb_produto(
id bigint auto_increment,
fruta varchar(255),
valor decimal(6,2),
origem varchar(255),
nomeCientifico varchar(255),
categoria_id bigint,
primary key (id),
foreign key(categoria_id)references tb_categoria(id)
);

insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("morango", 15.00, "EUA e Chile", "Fragaria vesca",5);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("banana", 10.00, "Indochina, India, Malásia e Filipinas", "Musa sp.",1);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("laranja", 55.00, "India", "Citrus sinensis",4);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("abacate", 27.00, "México", "Persea americana",2);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("maça", 62.00, "Eurásia", "Malus domestica",3);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("uva", 20.00, "Ásia", "Vitis sp.",5);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("goiaba", 40.00, "Brasil", "Psidium guayava",3);
insert into tb_produto(fruta,valor,origem,nomeCientifico,categoria_id)values("melão", 17.00, "Egito", "Cucumis melo",2);

select*from tb_produto;

select*from tb_produto where valor>50;

select*from tb_produto where valor between 3 and 60;

select*from tb_produto where fruta like "%c%";

select tb_categoria.estacao,tb_categoria.vitamina, tb_categoria.tipo
from tb_categoria inner join tb_produto
on tb_produto.categoria_id=tb_categoria.id;

select fruta from tb_produto where categoria_id=3;