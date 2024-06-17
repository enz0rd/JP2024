Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Seção de Declarações das variáveis 
nota1, nota2, media: real
i, numAlunos: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreva("Digite o número de alunos: ")
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
        escreval("Aluno ",i," está com média ", media, ". Aprovado!")
     senao
        escreval("Aluno ",i," está com média ", media, ". Reprovado!")
     fimse
FIMPARA
Fimalgoritmo