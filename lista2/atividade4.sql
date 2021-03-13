create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(200),
ativo boolean,
primary key (id)
);

insert into tb_categoria(tipo,ativo) values ("bovino",true);
insert into tb_categoria(tipo,ativo) values ("aves",true);
insert into tb_categoria(tipo,ativo) values ("suino",true);
insert into tb_categoria(tipo,ativo) values ("embutidos",true);
insert into tb_categoria(tipo,ativo) values ("bebidas",true);

create table tb_produtos(
id bigint auto_increment,
nome varchar(200),
codigoproduto int not null,
preco decimal (10,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("Salsicha perdigao",2549,11.99,4);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("contra file",475,65.50,1);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("bisteca",501,21.99,3);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("coca cola",606,15.99,5);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("mortadela perdigao",315,50.70,4);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("Suan",249,11.99,1);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("peru sadia",3982,57.10,2);
insert into tb_produtos (nome,codigoproduto,preco,categoria_id) values ("peito de frango",2963,7.99,2);

select * from tb_produtos where preco>50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_categoria.tipo,tb_produtos.nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo like "%bov%";


