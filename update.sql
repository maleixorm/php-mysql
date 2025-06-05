select * from tb_alunos;

update tb_alunos
set nome = 'Mary', idade = 25, email = 'mary.posa@tucker.com'
where id_aluno= 18;

select * from tb_alunos where idade >= 80;

update tb_alunos
set interesse = 'Saúde'
where idade >= 80;