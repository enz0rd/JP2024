Algoritmo "Calcular_m�dia_com_4_notas"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 5/15/2024
Var
// Se��o de Declara��es das vari�veis 
nome_aluno: caracter
media, soma: real
notas: vetor[0..3] de real
n: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

escreva("Digite o nome do aluno: ")
leia(nome_aluno)
n := 0
enquanto n <> 4 faca
         escreval("escreva a ", n+1, " nota:")
         leia(notas[n])
         n := n + 1
fimenquanto

n := 0
enquanto n <> 4 faca
         soma := soma + notas[n]
         n := n + 1
fimenquanto

media <- soma / 4

se media >= 7 entao
   escreval("Aluno: ", nome_aluno, " est� aprovado com uma m�dia ", media)
senao
   escreval("Aluno: ", nome_aluno," est� reprovado com uma m�dia ", media)
fimse



Fimalgoritmo