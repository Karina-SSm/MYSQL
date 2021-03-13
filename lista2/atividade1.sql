CREATE database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
jogo varchar(200) not null,
classificacao varchar(200) not null,
categoria varchar(200) not null,
primary key(id)
);
insert into tb_classe(jogo,classificacao,categoria) values ("Freefire","bom","Guerra");
insert into tb_classe(jogo,classificacao,categoria) values ("super mario","otimo","aventura");
insert into tb_classe(jogo,classificacao,categoria) values ("Mortal kaonbat","muito bom","luta");
insert into tb_classe(jogo,classificacao,categoria) values ("Need for speed","ruim","corrida");
insert into tb_classe(jogo,classificacao,categoria) values ("minecraft","regular","sobrevivencia");


create table tb_personagens(
id bigint auto_increment,
nome varchar(200) not null,
habilidade varchar(200) not null,
poderataque int not null,
poderdefesa int not null,
arma varchar(200) not null,
classe_id bigint not null,
primary key(id),
foreign key(classe_id) references tb_classe (id)
);

insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Kelly","correr muito rapido",3000,1500,"lança granada",1);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Sub-zero","gelo",5000,3000,"espada",3);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Luigi","descer pelo cano",1200,1000,"martelo",2);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Estive","construçao",2000,2500,"picareta",5);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Alok","som na caixa",1000,3200,"M60",1);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Sibdel","magia",3100,5000,"cabelo",3);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("Jack","correr",1000,1000,"carro",4);
insert into tb_personagens(nome,habilidade,poderataque,poderdefesa,arma,classe_id) values ("scorpion","fogo",4000,6500,"correntes",3);

select * from tb_classe;
select * from tb_personagens;

select poderataque from tb_personagens where poderataque >2000;
select * from tb_personagens where poderdefesa in(1000,2000);
select * from tb_personagens where nome like "%c%";
select * from tb_personagens
 inner join tb_classe on tb_classe.id = tb_personagens.classe_id;
 select tb_personagens.nome, tb_classe.categoria from tb_personagens
 inner join tb_classe on tb_classe.id = tb_personagens.classe_id
 where tb_classe.categoria like "%luta%";
 





