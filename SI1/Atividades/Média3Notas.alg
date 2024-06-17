Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Seção de Declarações das variáveis 
nota1, nota2, nota3, media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Escreva a primeira nota:")
leia(nota1)
escreval("Escreva a segunda nota:")
leia(nota2)
escreval("Escreva a terceira nota:")
leia(nota3)

media <- (nota1+nota2+nota3)/3

se media >= 6 entao
   escreval("Aluno aprovado! Média: ", media)
senao
   escreval("Aluno reprovado! Média: ", media)
fimse

Fimalgoritmo