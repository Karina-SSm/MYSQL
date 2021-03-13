create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(200),
ativo boolean,
primary key(id)
);

insert into tb_categoria(tipo,ativo) values ("Tintas",true);
insert into tb_categoria(tipo,ativo) values ("construcao",true);
insert into tb_categoria(tipo,ativo) values ("ferramentas",true);
insert into tb_categoria(tipo,ativo) values ("banheiro",true);
insert into tb_categoria(tipo,ativo) values ("decoraçao",true);

create table tb_produtos(
id bigint auto_increment,
nome varchar(200),
codigo int not null,
preco decimal (10,2),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos(nome,codigo,preco,categoria_id) values ("areia",111,199.10,2);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("martelo",255,22.30,3);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("kit gabinete",364,399.90,4);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("lustre",161,89.50,5);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("pedra",891,168.40,2);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("kit chaves de fenda",745,55.10,3);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("tinta suvinil",321,99.10,1);
insert into tb_produtos(nome,codigo,preco,categoria_id) values ("tinta colorama",458,38.75,1);

select * from tb_produtos where preco >50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_categoria.tipo,tb_produtos.nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo like "%CONS%";

