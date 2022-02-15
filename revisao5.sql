create database revisao5;

use  revisao5;

create table Tb_Vendedores
(
	cod_vendedor int not null primary key auto_increment,
    nome_vendedor varchar(30),
    categoria char(1)
);

create table Tb_Vendas
(
	cod_vendas int not null primary key auto_increment,
    valor decimal (10,2),
    
    cod_vendedor int,
    constraint Cod_Vendedor_Vendas
    foreign key (cod_vendedor)
    references Tb_Vendedores (cod_vendedor)
    
);

insert into Tb_Vendedores (nome_vendedor, categoria)
values ('Maria', 'A'),
		('José', 'B'),
        ('João', 'B');
        
insert into Tb_Vendas (valor, cod_vendedor)
values (4000, 1),
		(2000, 2),
        (3000, 3),
        (1000, 1),
        (2000, 2),
        (2000, 3);
        
select * from tb_vendedores;
select * from tb_vendas;

select tb_vendas.cod_vendas, tb_vendas.valor, tb_vendedores.nome_vendedor from tb_vendas, tb_vendedores where tb_vendas.cod_vendedor = tb_vendedores.cod_vendedor;

