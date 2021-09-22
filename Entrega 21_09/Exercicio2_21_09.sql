create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_category(
id bigint auto_increment,
massa varchar(255),
recheio varchar(255),
borda varchar(255),
primary key (id)
);

insert into tb_category(massa, recheio, borda)values("massa fina", "frango com catupiry", "recheada");
insert into tb_category(massa, recheio, borda)values("massa grossa", "mussarela", "sem recheio");
insert into tb_category(massa, recheio, borda)values("massa fina", "vegana", "sem recheio");
insert into tb_category(massa, recheio, borda)values("massa grossa", "calabresa", "recheada");
insert into tb_category(massa, recheio, borda)values("massa grossa", "chocolate", "recheada");

select*from tb_category;

create table tb_pizza(
id bigint auto_increment,
valor decimal(4,2),
tamanho varchar(255),
recheioExtra varchar(255),
formaDePagamento varchar(255),
modoPreparo varchar(255),
category_id bigint,
primary key (id),
foreign key (category_id) references tb_category(id)
);

insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(37.50, "família", "Mais calabresa", "cartão de crédito", "Assada",4);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(25.00, "brotinho", "Mais orégano", "cartão de crédito", "frita",1);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(17.00, "média", "Sem extra", "cartão de débito", "Assada",3);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(54.20, "família", "Mais queijo", "cartão de débito", "Assada",2);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(26.70, "brotinho", "Mais calabresa", "cartão de crédito", "frita",4);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(37.80, "família", "sem Extra", "dinheiro", "Assada",5);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(46.40, "média", "Mais queijo", "cartão de crédito", "frita",2);
insert into tb_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo, category_id)values(37.60, "família", "Mais calabresa", "dinheiro", "Assada",4);

select*from tb_pizza;

select*from tb_pizza where valor>45.00;

select * from tb_pizza where valor between 29.00 and 60.00;

select*from tb_category where recheio like "%c%";

select tb_category.massa,tb_category.recheio, tb_category.borda
from tb_pizza inner join tb_category
on tb_category.id=tb_pizza.category_id;

select tamanho from tb_pizza where category_id=4;