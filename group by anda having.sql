/* GROUP BY */
select interesse, count(*) as Total from tb_alunos group by interesse;
select estado, count(*) as Total from tb_alunos group by estado;

/* HAVING */
select estado, count(*) as total_de_registros_por_estado from tb_alunos group by estado;
select estado, count(*) as total_de_registros_por_estado from tb_alunos group by estado having total_de_registros_por_estado >= 5;
select estado, count(*) as total_de_registros_por_estado from tb_alunos group by estado having estado in('SP','MG');
select estado, count(*) as total_de_registros_por_estado from tb_alunos group by estado having estado in('CE','SC') and total_de_registros_por_estado > 4;
select estado, count(*) as total_de_registros_por_estado from tb_alunos where interesse != 'Esporte' group by estado having total_de_registros_por_estado > 3;