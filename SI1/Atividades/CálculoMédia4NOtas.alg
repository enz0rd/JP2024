Algoritmo "Calcular_média_com_4_notas"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 5/15/2024
Var
// Seção de Declarações das variáveis 
nome_aluno: caracter
media, soma: real
notas: vetor[0..3] de real
n: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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
   escreval("Aluno: ", nome_aluno, " está aprovado com uma média ", media)
senao
   escreval("Aluno: ", nome_aluno," está reprovado com uma média ", media)
fimse



Fimalgoritmo