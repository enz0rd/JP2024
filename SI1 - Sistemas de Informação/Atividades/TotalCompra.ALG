Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Se��o de Declara��es das vari�veis 
v1,v2,v3, total: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

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