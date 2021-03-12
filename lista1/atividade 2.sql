CREATE database db_ecomerce;
 
use db_ecomerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(200) not null,
marca varchar(200) not null,
categoria varchar(200) not null,
cor varchar(250) not null,
preco decimal(10,2) not null,
primary key(id)
);

insert into tb_produtos(nome,marca,categoria,cor,preco) values("bicicleta","caloi","infantil","rosa",550.99);
insert into tb_produtos(nome,marca,categoria,cor,preco) values("bicicleta","caloi","infantil","rosa",550.99);

update tb_produtos set tb_produtos. nome = "microondas",marca = "panasonic",categoria = "eletrodomestico",cor = "branco",preco = 399.0 where id = 2;
select * from tb_produtos;

insert into tb_produtos(nome,marca,categoria,cor,preco) values("geladeira","brastemp","refrigerador","inox",2700.90);
insert into tb_produtos(nome,marca,categoria,cor,preco) values("notebook","acer","eletronicos","preto",1990.99);
insert into tb_produtos(nome,marca,categoria,cor,preco) values("boneca","matel","brinqueo","bege",150.00);
insert into tb_produtos(nome,marca,categoria,cor,preco) values("bicicleta","caloi","adulto","cromada",1100.99);
insert into tb_produtos(nome,marca,categoria,cor,preco) values("liquidificador","arno","eletrodomestico","vermelho",99.99);
insert into tb_produtos(nome,marca,categoria,cor,preco) values("armario","itatiaia","moveis","marfin",2100.99);

select * from tb_produtos  where preco <500.99;
select * from tb_produtos where preco >500.00;