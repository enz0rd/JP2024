insert into tipo_conta (descricao, tipo) values 
('Aluguéis','Entrada'),
('Salário', 'Entrada'),
('Vendas', 'Entrada'),
('Freelancer', 'Entrada'),
('Conta de luz', 'Saída'),
('Conta de água', 'Saída'),
('Cartão de Crédito', 'Saída'),
('Gasolina', 'Saída'),
('Lazer e afins', 'Saída');

select * from tipo_conta

insert into receitas (data_hora, historico, valor, tipo_id) values
('2024-04-05', 'Salário 04/24', 2453.80, 2),
('2024-04-10', 'Aluguéis 04/24', 1000, 1),
('2024-04-11', 'Dev Empresa', 770, 4),
('2024-04-15', 'Vendas Ecommerce', 150, 3);

select * from receitas

insert into despesas (data_hora, vencimento, historico, valor, tipo_id, status) VALUES
('2024-04-07', '2024-04-15', 'Luz 04/24', 127.23, 5, 'Paga'),
('2024-04-07', '2024-04-15', 'Água 04/24', 54.20, 6, 'Paga'),
('2024-04-10', '2024-04-30', 'Nubank', 453.54, 7, 'A vencer'),
('2024-04-29', '2024-04-29', 'Abastecimento', 100, 8, 'Paga');

select * from despesas