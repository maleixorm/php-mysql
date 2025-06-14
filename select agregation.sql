truncate tb_cursos;
select * from tb_cursos;
drop table tb_cursos;

CREATE TABLE tb_cursos (
  id_curso INT NOT NULL,
  imagem_curso VARCHAR(100) NOT NULL,
  nome_curso CHAR(50) NOT NULL,
  resumo TEXT NULL,
  data_cadastro DATETIME NOT NULL,
  ativo BOOLEAN DEFAULT 1,
  investimento FLOAT DEFAULT 0,
  carga_horaria INT NULL  
);

TRUNCATE tb_cursos;

INSERT INTO tb_cursos(id_curso, imagem_curso, nome_curso, resumo, data_cadastro, ativo, investimento, carga_horaria) VALUES (1, 'curso_node.jpg', 'Curso Completo do Desenvolvedor NodeJS e MongoDB', 'Resumo do curso de NodeJS', '2018-01-01', 1, 159.99, 15), (2, 'curso_react_native.jpg', 'Multiplataforma Android/IOS com React e Redux', 'Resumo do curso de React Native', '2018-02-01', 1, 204.99, 37), (3, 'angular.jpg', 'Desenvolvimento WEB com ES6, TypeScript e Angular', 'Resumo do curso de ES6, TypeScript e Angular', '2018-03-01', 1, 579.99, 31), (4, 'web_completo_2.jpg', 'Web Completo 2.0', 'Resumo do curso de Web Completo 2.0', '2018-04-01', 1, 579.99, 59), (5, 'linux.jpg', 'Introdução ao GNU/Linux', 'Resumo do curso de GNU/Linux', '2018-05-01', 0, 0, 1);

/* Select - Agregação */
select min(investimento) from tb_cursos;
select min(investimento) from tb_cursos where ativo = true;
select max(investimento) from tb_cursos;
select avg(investimento) from tb_cursos where ativo = true;
select sum(investimento) from tb_cursos;
select sum(investimento) from tb_cursos where ativo = true;
select count(*) from tb_cursos where ativo = true;