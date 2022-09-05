-- Aula 11 | Curso em vídeo

-- Importei um dump
use cadastro;
select*from gafanhotos;
select*from cursos;

-- Ordem crescente 
select*from cursos
order by nome;

-- Ordem decrescente | desc
select*from cursos
order by nome desc;

-- Filtrando colunas
select nome, carga, ano from cursos
order by nome;

-- Selecionando Linhas
select*from cursos 
where ano = '2016'
order by nome;

-- Selecionando Linhas e Colunas 
select nome, descricao, ano from cursos
where ano != 2016
order by ano, nome ;

-- Selecionando intervalos 
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

-- Selecionando valores
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

-- Combinando testes
select nome, carga, totaulas from cursos
where carga > 35 and totaulas< 30;

-- Combinando testes 1.2
select nome, carga, totaulas from cursos
where carga > 35 or totaulas< 30;

-- ----------------------------------------------------------------------------

-- Aula 11 parte 2

-- Seleção por nome
select*from cursos
where nome = 'Php';

-- Usando o Operador LIKE
select*from cursos
where nome like 'P%';

-- Wildcars | Not like
select*from cursos
where nome like '%a%';

select*from cursos
where nome not like '%a%';

-- Wildcards | Exigindo que haja algo
select*from cursos
where nome like 'ph%p_';

select*from gafanhotos
where nome like '%_silva%';


-- Destinguir
select distinct carga from cursos;

-- Funções de agregações
select count(*) from cursos where carga > 40;
select max(carga) from cursos;
select nome, min(carga) from cursos;
select sum(totaulas) from cursos;
select avg(totaulas) from cursos;


-- Exercícios

-- 01 | Uma lista com o nome de todas as mulheres em gafanhotos
select*from gafanhotos
where sexo = 'F';

-- 02 | Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015
select*from gafanhotos
where nascimento between '2000/01/01' and '2015/12/31' order by nascimento;

-- 03 |Uma lista com o nome de todos os homens que trabalham com Programadores
select*from gafanhotos
where sexo = 'M' and profissao = 'Programador' order by nome; 

-- 04 | Uma lista com os dados de todas as milheres que naceram no Brasil e que têm seu nome iniciado com a letra J
select*from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

-- 05 | Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg
select nome, nacionalidade from gafanhotos
where nacionalidade not like 'Brasil' and nome like '%Silva%' and peso < '100';

-- 06 | Qual é a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos
where nacionalidade = 'Brasil' and sexo = 'M';

-- 07 | Qual é a média de peso dos gafanhotos cadastrados
select avg(peso) from gafanhotos;

-- 08 | Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/200
select min(peso) from gafanhotos
where nacionalidade not like 'Brasil' and sexo = 'F' and nascimento between '1990/01/01' and '2000/12/31';

-- 09 | Quantas gafanhotos mulheres têm mais de 1.90m de altura
select count(*) from gafanhotos
where sexo = 'F' and altura > '1.90';



