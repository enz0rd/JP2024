-- Total de despesas do mês

select EXTRACT(month from data_hora) as mes, sum(valor) as total 
from despesas 
group by extract(month from data_hora)

-- Total de receitas do mês

select EXTRACT(month from data_hora) as mes, sum(valor) as total 
from receitas 
group by extract(month from data_hora)

-- Soma de despesas por status

select tipo_conta.descricao, sum(despesas.valor) 
from despesas 
join tipo_conta on tipo_conta.id = despesas.tipo_id
group by tipo_conta.descricao

-- Soma de receitas por status

select tipo_conta.descricao, sum(receitas.valor) 
from receitas
join tipo_conta on tipo_conta.id = receitas.tipo_id
group by tipo_conta.descricao