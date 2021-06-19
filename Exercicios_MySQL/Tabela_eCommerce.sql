create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    produto varchar(255) not null,
    fabricante varchar (255) not null,
    modelo varchar (255) not null,
    armazenamento varchar(255) not null,
    preco decimal (6,2) not null,
    primary key (id)
);

	insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Apple", "Iphone XR","256GB", 3500.00);
    insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Samsung", "S20", "128GB", 2200.00);
	insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Xiaomi", "mi 11t ultra", "512GB", 2600.00);
	insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Nokia", "Tijolão", "1GB", 150.00);
    insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Multilaser", "F Pro", "16GB", 389.00);
	insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Motorola", "One Vision", "64GB", 1200.00);
	insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Samsung", "Galaxy A01", "32GB", 490.00);
	insert into tb_produtos (produto,fabricante,modelo,armazenamento,preco) values ("Smartphone", "Xiaomi", "POCO X3 ", "128GB", 1699.99);

    select * from tb_produtos;
    
-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_produtos where preco >= 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_produtos where preco < 500;

 -- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_produtos set armazenamento = "500MB" where id = 4;
