create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint (5) auto_increment,
    tipo varchar (255) not null,
    categoria varchar (255) not null,
    primary key(id)
);

insert into tb_categoria (tipo,categoria) values ( "Comprimido", "Genérico");
insert into tb_categoria (tipo,categoria) values ( "Gotas", "Referência");
insert into tb_categoria (tipo,categoria) values ( "Solução Nasal", "Referência");
insert into tb_categoria (tipo,categoria) values ( "Solução Oftálmica Estéril", "Genérico");
insert into tb_categoria (tipo,categoria) values ( "Pomada", "Referência");

	select * from tb_categoria;

create table tb_produto(
	
    id bigint(5) auto_increment,
    nome varchar (255) not null,
    indicacao varchar (255) not null,
    preco decimal(5,2) not null,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)

);
	
    insert into tb_produto (nome,indicacao,preco,categoria_id) values ("Dipirona","Dor e Febre",5.00,1); 
	insert into tb_produto (nome,indicacao,preco,categoria_id) values ("PuraVit","Suplemento Vitamínico",53.99,2); 
	insert into tb_produto (nome,indicacao,preco,categoria_id) values ("Naridrin","Congestão Nasal",15.00,3); 
    insert into tb_produto (nome,indicacao,preco,categoria_id) values ("Cristalin","Colírio",13.00,4); 
    insert into tb_produto (nome,indicacao,preco,categoria_id) values ("BabyGlós","Assadura",12.40,5);
    insert into tb_produto (nome,indicacao,preco,categoria_id) values ("Minoxidil","Crescimento Capilar",83.99,2); 
	insert into tb_produto (nome,indicacao,preco,categoria_id) values ("Buscopan"," Cólica",21.99,1); 
	insert into tb_produto (nome,indicacao,preco,categoria_id) values ("Vick VapoRub","Congestão Nasal",17.50,5); 
    
    select * from tb_produto;
    
--    Faça um select que retorne os Produtos com o valor maior do que 50 reais.
	select * from tb_produto where preco > 50.00;
    
 --   Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
	select * from tb_produto where preco between 3 and 60;
    
 -- Faça um select utilizando LIKE buscando os Produtos com a letra B.
	select * from tb_produto where nome like "B%";
    
 --   Faça um um select com Inner join entre tabela categoria e produto.
	select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

--    Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são cosméticos).
	select * from tb_produto where categoria_id = 1;