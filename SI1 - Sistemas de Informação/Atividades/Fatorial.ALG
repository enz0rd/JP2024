Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Se��o de Declara��es das vari�veis 
numero, fator: real
resultado: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
Escreval("Escreva o n�mero que deseja fatorar")
leia(numero)
fator <- numero
resultado <- numero

enquanto fator > 1 faca
   fator <- fator -1
   resultado <- resultado * fator
   escreval(resultado)
fimenquanto

escreval("Resultado da equa��o: ", resultado)

Fimalgoritmo