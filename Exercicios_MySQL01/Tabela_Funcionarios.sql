create database db_controle_rh;

use db_controle_rh;

create table tb_funcionarios(
	matricula bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    setor varchar (255) not null,
    salario decimal(6,2) not null,
    primary key (matricula)
);

insert into tb_funcionarios(nome,cargo,setor,salario) values( "Vinicius Teixeira Santos", "Desenvolvedor Java Junior", "Tecnologia", 6500.00);
insert into tb_funcionarios(nome,cargo,setor,salario) values( "Fernando Merim", "Desenvolvedor Front-end", "Tecnologia", 5800.00);
insert into tb_funcionarios(nome,cargo,setor,salario) values( "Daniel Teixeira", "Segurança", "Administrativo", 3200.00);
insert into tb_funcionarios(nome,cargo,setor,salario) values( "Rubens Sousa", "Analista Contábil", "Financeiro", 2500.00);
insert into tb_funcionarios(nome,cargo,setor,salario) values( "Levi de Sousa", " Recrutador", "Recursos Humanos", 4200.00);

select * from  tb_funcionarios;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionarios set salario = 1500.00 where matricula = 3;

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
select * from tb_funcionarios where salario > 2000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
select * from tb_funcionarios where salario < 2000;


