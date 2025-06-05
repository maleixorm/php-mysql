alter table tb_cursos add column carga_horaria varchar(5) not null;
alter table tb_cursos change carga_hora carga_horaria int not null;
alter table tb_cursos drop carga_horaria;