-- conta quantos registros tem na tabela
select count(*) from alunos

-- seleciona tudo
select * from alunos

-- Conta quantas pessoas tem a idade maior que ou igual a 18 anos
select count(*) from alunos where idade <= 18

-- Entre tal idade = retorna os registros
select * from alunos where idade between 18 and 35

-- Seleciona os registros que possuem a maior idade presente nos dados
select * from alunos where idade = (select MAX(idade) from alunos)