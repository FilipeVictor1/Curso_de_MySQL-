-- Aula 15 | Curso em Vídeo

-- ACID


use cadastro;
describe gafanhotos;

-- Adicionando a Foreign Key 
alter table gafanhotos
add column curso_preferido int;

alter table gafanhotos
add foreign key (curso_preferido)
references cursos(idcurso);

select*from gafanhotos;
select*from cursos;

update gafanhotos 
set curso_preferido = '6'
where id = '1';

-- Integridade Referencial 
delete from cursos where idcurso = '28';


select nome, curso_preferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, gafanhotos.curso_preferido, cursos.nome, cursos.ano
from gafanhotos inner join cursos
on cursos.idcurso = gafanhotos.curso_preferido
order by gafanhotos.nome;

-- Inner Join
select g.nome, c.nome, c.ano from
gafanhotos as g inner join cursos as c 
on c.idcurso = g.curso_preferido
order by g.nome;

-- Outer Join
select g.nome, c.nome, c.ano from
gafanhotos as g right outer join cursos as c 
on c.idcurso = g.curso_preferido
order by c.nome;

select g.nome, c.nome, c.ano from
gafanhotos as g left outer join cursos as c 
on c.idcurso = g.curso_preferido
order by g.nome;

