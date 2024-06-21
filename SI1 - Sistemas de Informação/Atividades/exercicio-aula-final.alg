Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/19/2024
Var
// Seção de Declarações das variáveis 
n1, n2: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("Digite o primeiro número:")
leia(n1)
escreval("Digite o segundo número:")
leia(n2)

se n1 = n2 entao
   escreval("Os números indicados são iguais")
senao
     escreval("Os números são diferentes")
     se n1 > n2 entao
         escreval("Maior: ", n1, " Menor: ", n2)
      senao
         escreval("Maior: ", n2, " Menor: ", n1)
      fimse
fimse


Fimalgoritmo