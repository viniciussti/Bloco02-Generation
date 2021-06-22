create database db_escola;

use db_escola;

create table tb_alunos(
	matricula bigint not null auto_increment,
    nome varchar (255) not null,
    idade int not null,
    serie varchar (255) not null,
    nota decimal(3,2) not null,
    primary key (matricula)
);

	insert into tb_alunos (nome,idade,serie,nota) values ("Joaquim Francisco", 16, "1º MÉDIO", 7.5);
    insert into tb_alunos (nome,idade,serie,nota) values ("Maria Eduarda", 10, "4º FUNDAMENTAL", 8.3);
    insert into tb_alunos (nome,idade,serie,nota) values ("Gabriel Monteiro", 18, "3° MÉDIO", 6.9);
    insert into tb_alunos (nome,idade,serie,nota) values ("Fernanda Montenegro", 13, "6° FUNDAMENTAL", 9.1);
    insert into tb_alunos (nome,idade,serie,nota) values ("Maick Sousa", 7, "2° FUNDAMENTAL", 8.7);
    insert into tb_alunos (nome,idade,serie,nota) values ("Ruan Alves", 16, "2º MÉDIO", 5.5);
    insert into tb_alunos (nome,idade,serie,nota) values ("Lucal Sobral", 12, "6º FUNDAMENTAL", 4.5);
    insert into tb_alunos (nome,idade,serie,nota) values ("Pedro Borges", 15, "9º FUNDAMENTAL", 6.1);
    
    select * from tb_alunos;
    
-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
    select * from tb_alunos where nota > 7;
    
-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
	select * from tb_alunos where nota < 7;
    
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_alunos set idade = 13 where matricula = 7;