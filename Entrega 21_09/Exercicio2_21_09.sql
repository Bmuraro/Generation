create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
massa varchar(255),
recheio varchar(255),
borda varchar(255),
primary key (id)
);

insert into tp_categoria(massa, recheio, borda)values("massa fina", "frango com catupiry", "borda recheada");
insert into tp_categoria(massa, recheio, borda)values("massa grossa", "mussarela", "borda sem recheio");
insert into tp_categoria(massa, recheio, borda)values("massa fina", "vegana", "borda sem recheio");
insert into tp_categoria(massa, recheio, borda)values("massa grossa", "calabresa", "borda recheada");
insert into tp_categoria(massa, recheio, borda)values("massa grossa", "chocolate", "borda recheada");

select*from tp_categoria;

create table tb_pizza(
id bigint auto_increment,
valor float(3),
tamanho varchar(255),
recheioExtra varchar(255),
formaDePagamento varchar(255),
modoPreparo varchar(255),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(37.50, "família", "Mais calabresa", "cartão de crédito", "Assada");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(25.00, "brotinho", "Mais orégano", "cartão de crédito", "frita");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(17.00, "média", "Sem extra", "cartão de débito", "Assada");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(54.20, "família", "Mais queijo", "cartão de débito", "Assada");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(26.70, "brotinho", "Mais calabresa", "cartão de crédito", "frita");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(37.80, "família", "sem Extra", "dinheiro", "Assada");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(46.40, "média", "Mais queijo", "cartão de crédito", "frita");
insert into tp_pizza(valor, tamanho, recheioExtra, formaDePagamento, modoPreparo)values(37.60, "família", "Mais calabresa", "dinheiro", "Assada");

select*from tp_pizza;

select*from tp_pizza where valor>45.00;

select * from tp_pizza where valor between 29.00 and 60.00;

select*from tp_categoria where recheioExtra like %c%;

select tb_categoria.massa,tb_categoria.recheio, tb_categoria.borda
from tb_pizza inner join tb_categoria
on tb_categoria.id=tb_pizza.categoria_id;

select tamanho from tb_pizza where categoria_id="família";