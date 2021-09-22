create database db_construindo_nossa_vida;
use db_construindo_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
localizacao varchar(255),
noEstoque int(5),
departamento varchar (255),
primary key(id)
);

insert into tb_categoria(localizacao,noEstoque,departamento)values("corredor 10, prateleira 4", 26, "ferramentas");
insert into tb_categoria(localizacao,noEstoque,departamento)values("corredor 5, prateleira 2", 5, "material hidráulico");
insert into tb_categoria(localizacao,noEstoque,departamento)values("corredor 14, prateleira 2", 48, "material de construção");
insert into tb_categoria(localizacao,noEstoque,departamento)values("corredor 1, prateleira 3", 12, "Pisos e Revestimentos");
insert into tb_categoria(localizacao,noEstoque,departamento)values("corredor 7, prateleira 6", 30, "tintas e acessorios");

select*from tb_categoria;

create table tb_produto(
id bigint auto_increment,
produto varchar(255),
valor decimal(7,2),
quantidade int(5),
marca varchar(255),
categoria_id bigint,
primary key (id),
foreign key(categoria_id)references tb_categoria(id)
);

insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("motosserra", 475.25,1,"Dutra Máquinas",1);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("cano PVC", 255.00,5,"Tigre",2);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("Lata de tinta branca", 70.00,3,"Suvinil",5);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("pincel", 10.00,4,"Atlas",5);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("saco de cimento", 80.00,6,"Votoran",3);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("piso madeirado", 67.75,12,"Formigres",4);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("bloco de concreto", 160.45,30,"JCRB",3);
insert into tb_produto(produto,valor,quantidade,marca, categoria_id)values("torneira para lavatório", 215.90,1,"Spin Gourmet",2);

select*from tb_produto;

select*from tb_produto where valor>50;

select*from tb_produto where valor between 3 and 60;

select*from tb_produto where produto like "%c%";

select tb_categoria.localizacao,tb_categoria.noEstoque, tb_categoria.departamento
from tb_categoria inner join tb_produto
on tb_produto.categoria_id=tb_categoria.id;

select produto from tb_produto where categoria_id=3;