create table tb_produtos (
	id_produto int not null primary key auto_increment,
    produto varchar(200) not null,
    valor float not null
);

create table tb_descricoes_tecnicas (
	id_descricao_tecnica int not null primary key auto_increment,
    id_produto int not null,
    descricao_tecnica text not null,
    foreign key (id_produto) references tb_produtos (id_produto)
);