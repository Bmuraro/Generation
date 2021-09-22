create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
setor varchar(255),
noEstoque int(5),
localizacao varchar(255),
primary key(id)
);

insert into tb_categoria(setor,noEstoque,localizacao)values("higiene bucal", 6, "corredor 7, prateleira 2");
insert into tb_categoria(setor,noEstoque,localizacao)values("medicamentos", 12, "balcão de atendimento");
insert into tb_categoria(setor,noEstoque,localizacao)values("higiene bucal", 10, "corredor 7, prateleira 1");
insert into tb_categoria(setor,noEstoque,localizacao)values("higiene íntima", 21, "corredor 3, prateleira 4");
insert into tb_categoria(setor,noEstoque,localizacao)values("higiene íntima", 14, "corredor 3, prateleira 3");

select*from tb_categoria;

create table tb_produto (
id bigint auto_increment,
produto varchar(255),
valor decimal(5,2),
validade date,
marca varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(produto,valor,validade,marca,categoria_id)values("escova de dentes", 10.00, "2021-12-22", "Oral B", 1);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("pasta de dente", 5.00, "2021-11-10", "Colgate", 3);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("absorvente", 15.50, "2022-01-17", "sempre livre", 4);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("Dipirona monoidratada", 27.50, "2022-03-14", "Medley", 2);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("Aas", 19.25, "2021-11-22", "EMS", 2);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("cotonetes", 55.00, "2022-02-15", "Jhomson&Jhomson", 5);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("fio dental", 5.00, "2021-12-08", "Colgate", 3);
insert into tb_produto(produto,valor,validade,marca,categoria_id)values("sabonete", 12.00, "2021-01-20", "Dove", 4);

select*from tb_produto;

select*from tb_produto where valor>50;

select*from tb_produto where valor between 3 and 60;

select*from tb_produto where produto like "%b%";

select tb_categoria.setor,tb_categoria.noEstoque, tb_categoria.localizacao
from tb_categoria inner join tb_produto
on tb_produto.categoria_id=tb_categoria.id;

select produto from tb_produto where categoria_id=4;