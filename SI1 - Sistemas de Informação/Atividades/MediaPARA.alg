Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Se��o de Declara��es das vari�veis 
nota1, nota2, media: real
i, numAlunos: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

escreva("Digite o n�mero de alunos: ")
leia(numAlunos)

PARA i<-1 ate numAlunos faca
     escreval("")
     escreval("Informe a primeira nota: ")
     leia(nota1)
     escreval("Informe a segunda nota: ")
     leia(nota2)
     
     media <- (nota1+nota2) / 2
     
     escreval("")
     se media >= 7 entao
        escreval("Aluno ",i," est� com m�dia ", media, ". Aprovado!")
     senao
        escreval("Aluno ",i," est� com m�dia ", media, ". Reprovado!")
     fimse
FIMPARA
Fimalgoritmo