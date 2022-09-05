-- Aula 03 | Curso em Vídeo

-- Criando uma Database
create database cadastro;
use cadastro;

-- Criando uma tabela
create table pessoas(
nome varchar(30),
idade tinyint(3),
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20));

-- Descrevendo uma tabela
describe pessoas;