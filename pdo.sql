create table if not exists tb_usuarios(
    id int not null primary key auto_increment,
    nome varchar(50) not null,
    email varchar(100) not null,
    senha varchar(32) not null
);

insert into 
    tb_usuarios(nome, email, senha)
values 
    ('Kyle Reese', 'kyle@skynet.com', '123456'), 
    ('Sarah Connor', 'sarah@skynet.com', '123456'), 
    ('T-101', 't101@skynet.com', '123456')
;