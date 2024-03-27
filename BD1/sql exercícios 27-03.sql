select * from alunos;

select * from alunos where idade > 17 and idade < 50;

select * from alunos where pais != 'Brasil';

select * from alunos where nome like '%João%';

select * from alunos where idade < 18 and idade > 59;

-- exercícios

select * from alunos where idade = 30

select * from alunos where idade = 30 and pais = 'Brasil'

select * from alunos where idade > 30 and pais != 'Brasil'

-- ordenação

select * from alunos where idade = 30 order by nome, idade asc

select * from alunos where idade > 30 and pais != 'Brasil' order by idade desc

-- mais velho

select * from alunos where idade = (select max(idade) from alunos)