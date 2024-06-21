Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Seção de Declarações das variáveis 
v1,v2,v3, total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("Valor do primeiro produto:")
leia(v1)
escreval("Valor do segundo produto:")
leia(v2)
escreval("Valor do terceiro produto:")
leia(v3)

total <- v1+v2+v3

se total > 100 entao
   total <- total * 0.9
fimse

escreval("Total da compra: ", total)

Fimalgoritmo