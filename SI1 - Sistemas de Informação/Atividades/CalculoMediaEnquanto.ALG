Algoritmo "CalculoMediaEnquanto"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 5/29/2024
Var
// Seção de Declarações das variáveis 
choice: caracter
nota1, nota2, media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Deseja calcular a média de um aluno? (S/N)")
leia(choice)

Enquanto ((choice = "S") ou (choice = "s")) faca
limpatela
  escreva("Digite a primeira nota: ")
  leia(nota1)
  escreva("DIgite a segunda nota: ")
  leia(nota2)
  
  media <-(nota1+nota2)/2
  
  se(media >= 6) entao
    escreval("Aprovado, média: ", media)
  senao
    escreval("Reprovado, media: ", media)
  fimse
  
  escreval("Deseja Calcular a média novamente? (S/N)")
  leia(choice)
fimenquanto

Fimalgoritmo