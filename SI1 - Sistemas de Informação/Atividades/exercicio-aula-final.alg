Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/19/2024
Var
// Se��o de Declara��es das vari�veis 
n1, n2: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

escreval("Digite o primeiro n�mero:")
leia(n1)
escreval("Digite o segundo n�mero:")
leia(n2)

se n1 = n2 entao
   escreval("Os n�meros indicados s�o iguais")
senao
     escreval("Os n�meros s�o diferentes")
     se n1 > n2 entao
         escreval("Maior: ", n1, " Menor: ", n2)
      senao
         escreval("Maior: ", n2, " Menor: ", n1)
      fimse
fimse


Fimalgoritmo