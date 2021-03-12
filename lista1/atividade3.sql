CREATE database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(200) not null,
idade int not null,
serie int not null,
materia varchar(200),
nota int not null,
primary key(id)
);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Sabrina",13,8,"portugues",9);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Alessandra",12,7,"portugues",5);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Henrrique",7,2,"matematica",10);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Isabelly",9,4,"portugues",4);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Kaio",13,8,"quimica",7);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Izaque",10,5,"artes",10);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Sabrina",8,2,"matematica",6);
insert into tb_alunos(nome,idade,serie,materia,nota) values ("Enzo",13,7,"ciencias",7);
update tb_alunos set tb_alunos. nome = "Melissa"  where id = 7;

select * from tb_alunos where nota<7;
select * from tb_alunos where nota >=7;
