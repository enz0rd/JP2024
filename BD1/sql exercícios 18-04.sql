select count(*) from clientes where uf = 'SC'

select count(*), uf from clientes group by uf, cidade

select vendas_id, count(*), sum(valor_unitario * quantidade) from vendas_itens group by vendas_id

select vendas_id, count(*) quantidade_de_produtos, sum(quantidade) quantidade_vendida, 
sum(valor_unitario * quantidade) valor_total from vendas_itens
join vendas on vendas.id = vendas_itens.vendas_id
group by vendas_id

select vendas.numero, clientes.nome, produtos.nome, produtos.preco, vendedores.nome 
from vendas
join clientes on clientes.id = vendas.cliente_id
join vendas_itens on vendas_itens.vendas_id = vendas.id
join produtos on produtos.id = vendas_itens.produto_id
join vendedores on vendedores.id = vendas.vendedor_id