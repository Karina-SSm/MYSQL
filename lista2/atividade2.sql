create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(200) not null,
tamanho varchar(200) not null,
tempopreparo varchar(200)not null,
primary key(id)
);
insert into tb_categoria(tipo,tamanho,tempopreparo) values ("doce","normal","35 minutos");
insert into tb_categoria(tipo,tamanho,tempopreparo) values ("vegetariana","normal","25 minutos");
insert into tb_categoria(tipo,tamanho,tempopreparo) values ("vegana","brotinho","15 minutos");
insert into tb_categoria(tipo,tamanho,tempopreparo) values ("salgada","big","40 minutos");
insert into tb_categoria(tipo,tamanho,tempopreparo) values ("meio a meio","big","45 minutos");

create table tb_pizza(
id bigint auto_increment,
nome varchar(200) not null,
ingredientes varchar (200) not null,
bordas boolean not null,
entrega boolean not null,
preco decimal(10,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("portuguesa","prezunto mussarela e ovo",true,false,49.99,4);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("marguerita","mussarela e mangericão",true,true,35.99,4);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("veg","beringela abobrinha e tofu",false,true,69.99,3);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("vegeta","milho tomate ovo",false,false,21.99,2);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("sensação","cocolatee morangos",true,true,61.99,1);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("mussabrela","mussarela e calabresa",false,false,30.99,5);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("nult","nutela morango e banana",true,false,70.99,1);
insert into tb_pizza(nome,ingredientes,bordas,entrega,preco,categoria_id) values ("vergru","brucules e ecarola",false,false,50.99,3);
select * from tb_pizza where preco >45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select tb_categoria.tipo,tb_pizza.ingredientes from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.tipo like "%doce%";
