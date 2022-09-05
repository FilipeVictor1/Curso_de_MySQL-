-- Aula 06 | Curso em video

-- Alter table | Adicionando uma coluna
desc gafanhotos;
select*from gafanhotos;

alter table pessoas
add column profissao varchar(10);

-- Removendo uma coluna
alter table pessoas
drop column profissao;

-- Adicionando coluna em uma posição específica
alter table pessoas
add column profissao varchar(10) after nome;

-- Adicionando coluna na primeira posição 
alter table pessoas
add column codigo varchar(10) first;

-- Alterar estrutura da definição
alter table pessoas
modify column profissao varchar (20) not null default '';

-- Alterar nome da coluna
alter table pessoas
change column profissao prof varchar(20) not null default'';

-- Renomear tabela
alter table pessoas
rename to gafanhotos;


## Parte 2 da aula

-- Criando outra tabela
desc cursos;
select*from cursos;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
total_aulas int unsigned,
ano year default '2022') default charset=utf8;

alter table cursos
add column id_curso int first;

-- Adicionar uma P.K
alter table cursos
add primary key (id_curso);

-- Apagar Tabelas
create table if  not exists teste(id int, nome varchar(10));
insert into teste value
('1','João'),
('2','Joana');

drop table teste;

