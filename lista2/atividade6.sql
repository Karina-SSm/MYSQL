create database db_cursoDAMINHAVIDA;

use db_cursoDAMINHAVIDA;

CREATE table tb_categoria(
id bigint auto_increment,
tipo varchar(200),
ativo boolean,
primary key(id)
);

insert into tb_categoria(tipo,ativo) values ("Programacao",true);
insert into tb_categoria(tipo,ativo) values ("Front-end",true);
insert into tb_categoria(tipo,ativo) values ("DevOps",true);
insert into tb_categoria(tipo,ativo) values ("Marketing Digital",true);
insert into tb_categoria(tipo,ativo) values ("Data Science",true);

create table tb_curso(
id bigint auto_increment,
modalidade varchar(200),
duracao varchar(200),
preco decimal(10,2),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("Logica de programacao","3 meses",60.00,1);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("Linux","1 mes",30.00,3);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("HTML e CSS","6 meses",120.00,2);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("Engenharia de dados","1 ano",359.75,5);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("Payton","2meses",45.00,1);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("Midia Paga","11 meses",190.00,4);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("SQL","4 meses",95.00,5);
insert into tb_curso(modalidade,duracao,preco,categoria_id) values ("Angular"," 3 semanas",35.00,2);

select * from tb_curso where preco >50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where modalidade like "%c%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_categoria.tipo,tb_curso.modalidade  from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.tipo like "%DATA%";



 