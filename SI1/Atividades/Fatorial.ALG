Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Seção de Declarações das variáveis 
numero, fator: real
resultado: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreval("Escreva o número que deseja fatorar")
leia(numero)
fator <- numero
resultado <- numero

enquanto fator > 1 faca
   fator <- fator -1
   resultado <- resultado * fator
   escreval(resultado)
fimenquanto

escreval("Resultado da equação: ", resultado)

Fimalgoritmo