CREATE database db_rh_empresa;

use db_rh_empresa;

CREATE table tb_funcionarios(
id bigint auto_increment,
nome varchar(200),
idade int not null,
salario float not null,
matricula int not null,
primary key (id)
);

insert into tb_funcionarios(nome,idade,salario,matricula) values ("Karina",31,1985,23);
insert into tb_funcionarios(nome,idade,salario,matricula) values ("Karina",31,1985,23);
insert into tb_funcionarios(nome,idade,salario,matricula) values ("Sophia",24,2989,05);
insert into tb_funcionarios(nome,idade,salario,matricula) values ("Laercio",37,3959,011);
insert into tb_funcionarios(nome,idade,salario,matricula) values ("Milena",19,4682,01);




select * from tb_funcionarios;
update tb_funcionarios set nome="Sabrina",idade=26,salario=295,matricula=17 where id=2;
select * from tb_funcionarios where salario<2000;
select * from tb_funcionarios where salario>2000;









