Algoritmo "CalcularM�dia"

Var
// Se��o de Declara��es das vari�veis
nota1, nota2, media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
escreva("Digite a primeira nota: ")
leia(nota1)
escreva("Digite a segunda nota: ")
leia(nota2)

media <- (nota1+nota2)/2

se media >= 6 entao
   escreva("Aprovado - M�dia: ", media)
senao
      escreva("Reprovado - M�dia: ", media)
fimse


Fimalgoritmo