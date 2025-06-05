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

/* Filtros do Select - LIKE */
select * from tb_alunos where nome like 'Evelyn';
select * from tb_alunos where nome like '%e';
select * from tb_alunos where nome like '%ne';
select * from tb_alunos where nome like '%a%';
select * from tb_alunos where nome like 'C%';
select * from tb_alunos where nome like '_riel';
select * from tb_alunos where nome like '_ru_';
select * from tb_alunos where nome like 'I__';
select * from tb_alunos where nome like '%tt_';

/* Filtros do Select - ORDER BY */
select * from tb_alunos where idade between 18 and 59 order by nome asc;
select * from tb_alunos where idade between 18 and 59 order by nome desc;
select * from tb_alunos where idade between 18 and 59 order by nome asc, idade desc, estado asc;

/* Filtros do Select - LIMIT/OFFSET */
select * from tb_alunos limit 25;
select * from tb_alunos order by id_aluno desc limit 25;
select * from tb_alunos limit 4 offset 0;
select * from tb_alunos limit 4 offset 4;
select * from tb_alunos limit 4 offset 8;
select * from tb_alunos limit 8,4;