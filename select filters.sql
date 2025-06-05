/* Filtros do Select - Comparação */
select * from tb_alunos where interesse = 'Jogos';
select * from tb_alunos where idade < 25;
select * from tb_alunos where idade <= 25;
select * from tb_alunos where idade > 30;
select * from tb_alunos where idade >= 35;

/* Filtros do Select - Lógicos */
select * from tb_alunos where idade > 45 and interesse = 'Jogos';
select * from tb_alunos where idade > 45 and interesse = 'Jogos' and estado = 'RN';
select * from tb_alunos where idade > 45 or interesse = 'Jogos';

/* Filtros do Select - BETWEEN */
select * from tb_alunos where idade between 18 and 25;

/* Filtros do Select - IN */
select * from tb_alunos where interesse in('Jogos','Música','Esporte');
select * from tb_alunos where interesse not in('Jogos','Música','Esporte');