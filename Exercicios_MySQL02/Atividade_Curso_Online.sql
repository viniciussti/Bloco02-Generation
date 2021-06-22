create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
certificado varchar(5) not null,
primary key (id)
);

insert into tb_categoria (categoria,certificado) values ("Programação", "Sim");
insert into tb_categoria (categoria,certificado) values ("Front-End", "Sim");
insert into tb_categoria (categoria,certificado) values ("Data Science", "Sim");
insert into tb_categoria (categoria,certificado) values ("Mobile", "Sim");
insert into tb_categoria (categoria,certificado) values ("DevOps", "Sim");

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
    curso varchar (255) not null,
    duracao time not null,
    valor decimal(6,2) not null,
	categoria_id bigint,
	primary key (id),
    foreign key(categoria_id) references tb_categoria(id)
);

	insert into tb_produto( curso,duracao,valor,categoria_id) values ("Java", "50:10:00", 57.99, 1);
    insert into tb_produto( curso,duracao,valor,categoria_id) values ("Angular", "16:20:00", 27.90, 2);
    insert into tb_produto( curso,duracao,valor,categoria_id) values ("Machine Learning", "42:50:00", 35.00, 3);
	insert into tb_produto( curso,duracao,valor,categoria_id) values ("Android", "65:30:00", 45.99, 4);
    insert into tb_produto( curso,duracao,valor,categoria_id) values ("AWS", "38:00:00", 75.00, 5);
    insert into tb_produto( curso,duracao,valor,categoria_id) values ("C#", "80:00:00", 60.00, 1);
    insert into tb_produto( curso,duracao,valor,categoria_id) values ("JavaScript", "48:30:00", 42.00, 2);
    insert into tb_produto( curso,duracao,valor,categoria_id) values ("Linux", "55:00:00", 75.90, 5);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
	select * from tb_produto where valor > 50;
    
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
	select * from tb_produto where valor between 3 and 60;
    
-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
	select * from tb_produto where curso like "J%";
    
-- Faça um um select com Inner join entre tabela categoria e produto.
	select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
-- Faça um select onde traga todos os Produtos de uma categoria específica.
	select * from tb_produto where categoria_id = 5;
    