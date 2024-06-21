-- Quantidade de vendas por cliente
select count(vendas.id), clientes.nome 
from vendas
join clientes on clientes.id = vendas.cliente_id
group by clientes.nome

-- Quantidade de vendas por cliente em um determinado período
select clientes.id, clientes.nome, count(*) as QTD_VENDAS
from clientes
left join vendas on vendas.cliente_id = clientes.id
where coalesce(vendas.data_hora between '2024-04-01' and '2024-04-30' or vendas.data_hora is null)
group by clientes.id, clientes.nome
order by count(*) desc

-- Select ligando a partir da tabela vendas as demais tabelas (clientes, vendedores, vendas_itens e produtos)
select 
vendas.id as venda, 
vendas.data_hora as data,
produtos.nome as produto, 
vendas_itens.quantidade, 
(vendas_itens.quantidade * vendas_itens.valor_unitario) as valor_total,
clientes.nome as cliente,
vendedores.nome as vendedor
from vendas
join vendas_itens on vendas_itens.vendas_id = vendas.id
join produtos on produtos.id = vendas_itens.produto_id
join clientes on clientes.id = vendas.cliente_id
join vendedores on vendedores.id = vendas.vendedor_id

-- Quantidade de itens por venda
select count(*) as qtd_itens, vendas.id as id_venda
from vendas_itens
join vendas on vendas.id = vendas_itens.vendas_id
group by vendas.id
order by count(*) desc

-- Valor total de cada venda
select vendas.id as venda, sum(vendas_itens.quantidade * vendas_itens.quantidade) as valor_total
from vendas
join vendas_itens on vendas_itens.vendas_id = vendas.id
group by vendas.id
order by valor_total desc

-- Quantidade de vendas por dia

select date(data_hora) as data, count(*) as total_vendas
from vendas
group by date(data_hora)

-- Valor total de vendas por dia
select date(vendas.data_hora) as data, sum(vi.quantidade * valor_unitario) as total_no_dia
from vendas
join vendas_itens vi on vi.vendas_id = vendas.id
group by date(vendas.data_hora)

-- Adicionando regras de integridade ao banco de dados
alter table vendas
add constraint fk_vendas_clientes
foreign key (cliente_id)
references public.clientes (id);

alter table vendas
add constraint fk_vendas_vendedores
foreign key (vendedor_id)
references public.vendedores (id);

-- não deixa alterar por conta das regras
update vendas set vendedor_id = 999
update vendas set cliente_id = 999