Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Se��o de Declara��es das vari�veis 
nota1, nota2, nota3, media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Escreva a primeira nota:")
leia(nota1)
escreval("Escreva a segunda nota:")
leia(nota2)
escreval("Escreva a terceira nota:")
leia(nota3)

media <- (nota1+nota2+nota3)/3

se media >= 6 entao
   escreval("Aluno aprovado! M�dia: ", media)
senao
   escreval("Aluno reprovado! M�dia: ", media)
fimse

Fimalgoritmo