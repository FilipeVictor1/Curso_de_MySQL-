-- Aula 13 | Curso em Vídeo

-- Agrupando
select carga  from cursos
group by carga;

-- Agrupando e Agregando
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select carga, count(nome) from cursos
where totaulas = 30
group by carga;

-- Agrupando e agregando | Having
select ano, count(*) from cursos
group by ano
having ano > 2016
order by count(*) desc;

select avg(carga) from cursos;

-- Mostrando apenas os cursos acima que a média de cursos
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

-- Execícios

-- 01 | Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao
order by count(*);

-- 02 | Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005
select sexo, count(*) from gafanhotos
where nascimento > '2005/01/01'
group by sexo = 'M', 'F';

/* 03 | Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país
de origem e o total de pessoas nascidas lá. Só nos iteressam os países que tiveram
mais de 3 gafanhotos com essa nacionalidade */
select nacionalidade, count(*) from gafanhotos
where nacionalidade not like 'Brasil'
group by nacionalidade
having count(nacionalidade) > '3'
order by nacionalidade, nome;

/* 04 | Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam
mais de 100Kg e que estão acima da média de altura de todos os cadastrados */
select altura, count(*) from gafanhotos
where peso > '100' and altura > (select avg(altura) from gafanhotos) 
group by altura
order by altura;

