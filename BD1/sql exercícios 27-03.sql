select * from alunos;

select * from alunos where idade > 17 and idade < 50;

select * from alunos where pais != 'Brasil';

select * from alunos where nome like '%João%';

select * from alunos where idade < 18 or idade > 59;

-- exercícios

--1 - Buscar todos os alunos que tem 30 anos
select * from alunos where idade = 30

--2 - Buscar todos os alunos que tem 30 anos e moram no Brasil.
select * from alunos where idade = 30 and pais = 'Brasil'

--3 - Buscar todos os alunos com mais de 30 anos que não moram no Brasil.
select * from alunos where idade > 30 and pais != 'Brasil'

-- ordenação

select * from alunos where idade = 30 order by nome, idade asc

select * from alunos where idade > 30 and pais != 'Brasil' order by idade desc

-- mais velho

select * from alunos where idade = (select max(idade) from alunos)

-- soma

select sum(idade) from alunos order by sum(idade)

-- Exercícios P2

--1 - Busque a quantidade de alunos agrupado por cidade, pais.
select count(*), cidade, pais from alunos group by cidade, pais order by count(*) desc

--2 - busque os alunos mais velhos por cidade e pais orderando pelo aluno mais velho.
select max(idade), cidade, pais from alunos group by cidade, pais order by max(idade) desc

--3- busque a média de idade dos alunos por cidade e país ordenando pela média mais alta.
select avg(idade), cidade, pais from alunos group by cidade, pais order by avg(idade) desc


