-- Função Upper e Lower

-- Deixam em caixa alta ou baixa
select id, upper(nome), idade from alunos
		-- caixa alta
		
select id, lower(nome), idade from alunos
		-- caixa baixa
		
-- Função Length
select id, nome, length(nome) as tamanho_nome, idade from alunos
			   -- quantos caracteres tem o texto
			   
-- Função Substring
select id, nome, substring(nome from 0 for position(' ' in nome)) as primeiro_nome from alunos
				-- retorna uma parte do texto, aqui retorna até o primeiro espaço
				
-- Função Like
select id, nome, idade from alunos where upper(nome) like upper('Enzo%')
					-- traz todas as informações que comecem com Enzo, nesse caso
					-- Pode ser utilizado dessa forma %santos%, para trazer todos os nomes
					-- que tenham 'santos' no meio
					
-- Exercícios update
-- 1. alterar a idade de todos os alunos com idade igual a 0 para 30:
update alunos set idade = 30 where idade = 0

-- 2. Alterar a cidade e país para Brasil e Concórdia de todos os alunos do Afeganistão:
update alunos set cidade = 'Concórdia', pais = 'Brasil' where pais = 'Afeganistão'

-- 3. Deletar todos os alunos com mais de 50 anos e país diferente de Brasil:
delete from alunos where idade > 50 and pais != 'Brasil'

-- 4. Inserir através de insert um aluno com seus dados:
insert into alunos (nome, idade, cidade, pais) values ('Enzo', 19, 'Concórdia', 'Brasil')

-- 5. Inserir um aluno com os seus dados após atualizar esses dados com o comando update 
-- colocando os dados de uma pessoa gerada através do
-- https://www.4devs.com.br/gerador_de_pessoas
