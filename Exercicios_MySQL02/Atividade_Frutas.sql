create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (categoria, ativo) values ("Doces",true);
insert into tb_categoria (categoria, ativo) values ("Semiácidas",true);
insert into tb_categoria (categoria, ativo) values ("Ácidas",true);
insert into tb_categoria (categoria, ativo) values ("Hiper-Hídricas",true);
insert into tb_categoria (categoria, ativo) values ("Oleaginosas",true);

select * from tb_categoria;


create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
cor varchar(255) not null,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, cor, preco, categoria_id) values ("Banana 5KG","Amarela",15.99,1);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Goiaba 10KG","Verde", 52.80, 2);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Uva 10KG","Roxa",71.90, 3);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Melão - 1un","Amarelo",6.70, 4);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Castanha do Pará 1KG","Marrom",59.90, 5);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Caju 8KG","Vermelho", 56.50, 2);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Maracujá 2KG","Amarela", 8.99, 2);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Morango 1KG","Vermelho",10.00, 3);


select * from tb_produtos;


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
	select * from tb_produtos where preco > 50;
    
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
	select * from tb_produtos where preco between 3 and 60;
    
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
	select * from tb_produtos where nome like "C%";
    
-- Faça um um select com Inner join entre tabela categoria e produto.
	select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
    
-- Faça um select onde traga todos os Produtos de uma categoria específica
	select * from tb_produtos where categoria_id = 2;