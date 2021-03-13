create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(200) not null,
ativo boolean  not null,
primary key(id)
);

insert into tb_categoria(descricao,ativo) values ("perfumaria",true);
insert into tb_categoria(descricao,ativo) values ("cosmeticos ",true);
insert into tb_categoria(descricao,ativo) values ("remedios",true);
insert into tb_categoria(descricao,ativo) values ("tintura",true);
insert into tb_categoria(descricao,ativo) values ("coisas de bebe",true);

create table tb_produtos(
id bigint auto_increment,
nome varchar(200)not null,
estoque int not null,
preco decimal (10,2)not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("fralda pompom",32,46.99,5);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("dipirona",70,18.99,3);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("tintura bioticolor",48,24.95,4);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("leite nan",14,36.74,5);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("amoxilina",7,84.00,3);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("desodorante rexona",21,15.99,1);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("batom ",50,13.90,2);
insert into tb_produtos(nome,estoque,preco,categoria_id) values ("kit maquiagem",4,79.99,2);

select * from tb_produtos where preco >50.00;

select * from  tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%b%";

select  * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_categoria.descricao,tb_produtos.nome from tb_produtos inner join tb_categoria on tb_categoria.id =tb_produtos.categoria_id
where tb_categoria.descricao like "%bebe%";


