-- Inserir cliente

insert into clientes (nome, cpf, data_nascimento, logradouro, bairro, numero, cep, cidade, uf) 
values 
	('Carlos Santos', '32165498777', '1975-02-09', 'Avenida dos Girassóis', 'Setor Bueno', '1450', '76543567', 'Goiânia', 'GO'),
	('Patrícia Lima', '76543210988', '1997-06-23', 'Rua dos Ipês', 'Centro', '1550', '09876654', 'Campina Grande', 'PB')
	('Jonas Pinho', '12254203823', '2005-03-12', 'Rua São Paulo', 'Estados', '5223', '89700000', 'Concórdia', 'SC'),
	('Jorge Pinho', '12554203823', '2005-03-12', 'Rua São Paulo', 'Estados', '5223', '89700000', 'Concórdia', 'SC'),
	('Jorge Pinho', '12354203823', '2005-03-12', 'Rua São Paulo', 'Estados', '5223', '89700000', 'Concórdia', 'SC')	

select * from clientes

-- Inserir Vendedores

insert into vendedores (nome, comissao) 
values 
	('Enzo', 0.85),
	('Maria Joaquina', 0.4),
	('Jonas', 0),
	('Jhonson', 0.13),
	('Cirilo', 0.002)
	
select * from vendedores
	
-- Inserir Produtos

INSERT INTO produtos (nome, preco, quantidade_disponivel, codigo_barras, unidade_medida)
VALUES 
    ('HotWheels', 35.5, 52, '1230984568762', 'UN'),
    ('Óculos Raiobão', 20.75, 23, '1029359382032', 'LT'),
    ('Chinelo Levaphau', 19.99, 75, '3332225559992', 'KG'),
    ('Chaveiro Muleta', 7.0, 125, '0284290236432', 'PC'),
    ('Moeda de Chocolate', 2.5, 74, '1789321084253', 'CX'),
    ('Cinto Levasura', 10.25, 10, '1789235298347', 'KG'),
    ('Açaí Tomalogo', 17.0, 2, '7891233455671', 'KG'),
    ('Leite v2 Protein Shake Monster Blaster', 6.0, 21, '7429537425792', 'LT'),
    ('Carne de Cnidário', 28.0, 0, '2344561358765', 'CX'),
    ('Vigor Romano', 10.9, 26, '1028931901241', 'UN')
	
select * from produtos

-- Inserir Vendas

insert into vendas (data_hora, numero, status, desconto, acrescimo, vendedor_id, cliente_id)
values
	('2023-12-08 20:32:00', '0001', 'Autorizada', 0, 0.5, 1, 6),
	('2024-02-08 08:02:00', '0002', 'Autorizada', 0.21, 0, 5, 10),
	('2024-02-12 12:35:00', '0003', 'Autorizada', 0.9, 0, 3, 20),
	('2024-03-07 22:43:00', '0004', 'Pendente', 0, 0.4, 2, 4),
	('2024-04-07 17:23:00', '0005', 'Cancelada', 0.2, 0, 4, 6),
	('2024-04-08 20:30:00', '0006', 'Autorizada', 0, 0, 1, 2),
	('2024-04-08 21:30:00', '0007', 'Cancelada', 0, 0, 2, 2)
	('2024-04-08 21:32:00', '0008', 'Pendente', 0, 0.4, 2, 4),
	('2024-04-08 22:43:00', '0009', 'Cancelada', 0.2, 0, 4, 6),
	('2024-04-08 23:38:00', '0010', 'Autorizada', 0, 0, 1, 2),

select * from vendas order by data_hora

-- Inserir os itens das vendas
	
insert into vendas_itens (vendas_id, quantidade, valor_unitario, desconto, acrescimo, produto_id)
values
-- Venda 1
	(2, 10, 10.9, 0, 0, 30),
	(2, 2, 10.25, 0, 0, 26),
	(2, 5, 6, 0, 0, 28),
	-- Venda 2
	(3, 6, 2.5, 0, 0.2, 25),
	(3, 1, 17, 0.5, 0, 27),
	(3, 7, 15.5, 0, 0.2, 10),
	-- Venda 3
	(4, 10, 10.9, 0, 0, 30),
	(4, 2, 10.25, 0, 0, 26),
	(4, 5, 6, 0, 0, 28),
	(4, 6, 2.5, 0, 0.2, 25),
	(4, 1, 17, 0.5, 0, 27),
	-- Venda 4
	(5, 7, 15.5, 0, 0.2, 10),
	(5, 7, 10.9, 0, 0.2, 30),
	(5, 7, 10.25, 0, 0.2, 26),
	-- Venda 5
	(6, 10, 10.9, 0, 0, 30),
	(6, 2, 10.25, 0, 0, 26),
	(6, 2, 17, 0, 0, 27),
	-- Venda 6
	(7, 5, 6, 0, 0, 28),
	(7, 6, 2.5, 0, 0.2, 25),
	(7, 1, 17, 0.5, 0, 27),
	(7, 7, 15.5, 0, 0.2, 10),
	-- Venda 7
	(8, 1, 6, 0, 0, 28),
	(8, 2, 2.5, 0, 0.2, 25),
	(8, 5, 17, 0.5, 0, 27),
	-- Venda 8
	(9, 5, 15.5, 0, 0.2, 10),
	(9, 2, 10.9, 0, 0.2, 30),
	(9, 8, 10.25, 0, 0.2, 26),
	-- Venda 9
	(10, 1, 10.9, 0, 0, 30),
	(10, 22, 10.25, 0, 0, 26),
	(10, 6, 17, 0, 0, 27),
	-- Venda 10
	(11, 6, 2.5, 0, 0.2, 25),
	(11, 1, 17, 0.5, 0, 27),
	(11, 7, 15.5, 0, 0.2, 10)
	

select * from vendas_itens
-- Valor total das vendas
select vendas_id, sum(valor_unitario * quantidade) from vendas_itens group by vendas_id order by vendas_id