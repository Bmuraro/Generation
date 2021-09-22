create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
formaDePagamento varchar(255),
categoria varchar(255),
primary key(id)
);

insert into tb_categoria(tipo, formadePagamento, categoria)values("presencial","cartão de crédito", "desenvolvimento");
insert into tb_categoria(tipo, formadePagamento, categoria)values("EAD","cartão de crédito", "TI & Software");
insert into tb_categoria(tipo, formadePagamento, categoria)values("presencial","cartão de crédito", "Marketing");
insert into tb_categoria(tipo, formadePagamento, categoria)values("EAD","boleto", "Negócios");
insert into tb_categoria(tipo, formadePagamento, categoria)values("EAD","boleto", "Desenvolvimento pessoal");

select*from tb_categoria;

create table tb_curso(
id bigint auto_increment,
curso varchar(255),
valor decimal(6,2),
duracao varchar(255),
turma varchar(255),
categoria_id bigint,
primary key (id),
foreign key(categoria_id)references tb_categoria(id)
);

insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Desenvolvimento Android",34.90,"2 meses", "Turma 21", 1);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Instagram Marketing",24.90,"1 mes", "Turma 25", 3);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Web hacking",27.90,"3 meses", "Turma 1", 2);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Marketing Digital",39.90,"5 meses", "Turma 32", 3);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Azure data factory",50.90,"2 meses", "Turma 18", 2);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Desenvolvimento IOS",27.90,"2 meses", "Turma 20", 1);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Liderança com Inteligência Emocional",35.90,"1 mes", "Turma 5", 5);
insert into tb_curso(curso,valor,duracao,turma,categoria_id)values("Gestão Ágil com SCRUM",60.90,"1 mes", "Turma 10", 4);

select*from tb_curso;

select*from tb_curso where valor>50;

select*from tb_curso where valor between 3 and 60;

select*from tb_curso where curso like "%j%";

select tb_categoria.tipo,tb_categoria.formadePagamento, tb_categoria.categoria
from tb_categoria inner join tb_curso
on tb_curso.categoria_id=tb_categoria.id;

select curso from tb_curso where categoria_id=2;