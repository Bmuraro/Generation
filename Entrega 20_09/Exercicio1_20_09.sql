create database db_rh;
use db_rh;
create table tb_rh(
id bigint auto_increment primary key,
nome varchar(255)not null,
idade int (3),
salario decimal(7,2),
matricula int (5),
cargo varchar(255)
);
insert into tb_rh(nome,idade,salario,matricula,cargo) values("Bruno Muraro",25,2500.00,18854,"desenvolvedor junior");
insert into tb_rh(nome,idade,salario,matricula,cargo) values("Jorge Fernando",28,1500.00,18784,"desenvolvedor junior");
insert into tb_rh(nome,idade,salario,matricula,cargo) values("Bela Garcia",32,2100.00,18744,"desenvolvedor senior");
insert into tb_rh(nome,idade,salario,matricula,cargo) values("Luisa Inacio",24,1700.00,18584,"desenvolvedor senior");

select*from tb_rh;
select*from tb_rh where salario>2000.00;
select*from tb_rh where salario<2000.00;

update tb_rh set cargo="desenvolvedor senior" where id=1;