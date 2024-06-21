Algoritmo "CalcularMédia"

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

se media >= 6 entao
   escreva("Aprovado - Média: ", media)
senao
      escreva("Reprovado - Média: ", media)
fimse


Fimalgoritmo