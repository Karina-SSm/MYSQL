create database db_minha_casa_mais_bonita;

use db_minha_casa_mais_bonita;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (200),
ativo boolean,
primary key(id)
);

insert into tb_categoria(descricao,ativo) values ("cozinha",true);
insert into tb_categoria(descricao,ativo) values ("sala",true);
insert into tb_categoria(descricao,ativo) values ("quarto",true);
insert into tb_categoria(descricao,ativo) values ("sala de jantar",true);
insert into tb_categoria(descricao,ativo) values ("cama mesa e banho",true);

create table tb_produtos(
id bigint auto_increment,
produto varchar (200),
codigo int,
preco decimal (10,2)not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos(produto,codigo,preco,categoria_id) values ("painel de tv 55 polegadas",1452,295.5,2);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("toalha de rosto",232,15.99,5);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("mesa 6 lugares",369,1320.5,4);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("jogo de sofa ",215,800,2);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("armario",452,995.99,1);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("box casal",785,200.20,3);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("beliche",142,463.1,3);
insert into tb_produtos(produto,codigo,preco,categoria_id) values ("toalha de banho",152,29.5,5);

create table tb_usuario(
id bigint auto_increment,
nome varchar(200),
cep int,
codigopedido int,
produtos_id bigint,
primary key(id),
foreign key(produtos_id) references tb_produtos(id)
);

insert into tb_usuario(nome,cep,codigopedido,produtos_id) values ("Karina",04877030,366,6);
insert into tb_usuario(nome,cep,codigopedido,produtos_id) values ("Sophia",04877130,588,8);
insert into tb_usuario(nome,cep,codigopedido,produtos_id) values ("Milena",04875250,784,1);
insert into tb_usuario(nome,cep,codigopedido,produtos_id) values ("Sabrina",04877080,222,8);
insert into tb_usuario(nome,cep,codigopedido,produtos_id) values ("Laercio",04877300,969,4);

select * from tb_produtos where preco>50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where produto like "%b%";

select * from tb_usuario where nome like"%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select avg(preco) as media from tb_produtos;

select sum(preco) from tb_produtos;

select count(*) from tb_produtos;

select tb_categoria.descricao,tb_produtos.produto from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.descricao like "%qua%";

