Algoritmo "CalcularMédia"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 5/8/2024
Var
// Seção de Declarações das variáveis
nota1, nota2, media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreva("Digite a primeira nota: ")
leia(nota1)
escreva("Digite a segunda nota: ")
leia(nota2)

media <- (nota1+nota2)/2

se media >= 7 entao
   escreva("Aprovado - Média: ", media)
senao
      escreva("Reprovado - Média: ", media)
fimse


Fimalgoritmo