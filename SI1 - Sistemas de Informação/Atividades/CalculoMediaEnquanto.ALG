Algoritmo "CalculoMediaEnquanto"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 5/29/2024
Var
// Se��o de Declara��es das vari�veis 
choice: caracter
nota1, nota2, media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Deseja calcular a m�dia de um aluno? (S/N)")
leia(choice)

Enquanto ((choice = "S") ou (choice = "s")) faca
limpatela
  escreva("Digite a primeira nota: ")
  leia(nota1)
  escreva("DIgite a segunda nota: ")
  leia(nota2)
  
  media <-(nota1+nota2)/2
  
  se(media >= 6) entao
    escreval("Aprovado, m�dia: ", media)
  senao
    escreval("Reprovado, media: ", media)
  fimse
  
  escreval("Deseja Calcular a m�dia novamente? (S/N)")
  leia(choice)
fimenquanto

Fimalgoritmo