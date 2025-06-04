CREATE DATABASE db_curso_web;
DROP DATABASE db_curso_web;

create table tb_cursos (
	id_curso int not null,
    imagem_curso varchar(100) not null,
    nome_curso char(50) not null,
    resumo text null,
    data_cadastro datetime not null,
    ativo boolean default true,
    investimento float default 0
);

drop table tb_cursos;