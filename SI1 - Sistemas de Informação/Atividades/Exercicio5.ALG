Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 6/5/2024
Var
// Se��o de Declara��es das vari�veis 
sexo: caracter
maiorAltura, altura, totalAlturaMulheres,porcentagemHomens, porcentagemMulheres, menorAltura: real
i, qtdPessoas, homens, mulheres, totalPessoas: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
i <- 0
homens <- 0
mulheres <- 0

escreval("Escreva a quantidade de pessoas para cadastrar:")
leia(qtdPessoas)

enquanto i < qtdPessoas faca
         limpatela
         escreval("Pessoa ", i+1)
         escreval("Homem ou mulher? (H/M)")
         leia(sexo)
         escreval("Digite a sua altura")
         leia(altura)

         se(sexo = "H") ou (sexo = "h") entao
              homens <- homens + 1
         senao
              mulheres <- mulheres + 1
              totalAlturaMulheres <- totalAlturaMulheres + altura
         fimse

         totalPessoas<- totalPessoas + 1
         
         se(altura > maiorAltura) entao
            maiorAltura <- altura
         senao se(altura < menorAltura) entao
            menorAltura <- altura
         fimse
         i<-i+1
fimenquanto

totalAlturaMulheres <- totalAlturaMulheres / mulheres

porcentagemHomens <- (homens / totalPessoas) * 100
porcentagemMulheres <- (mulheres / totalPessoas) * 100

limpatela
escreval("A maior altura � ", maiorAltura)
escreval("A menor altura � ", menorAltura)
escreval("")
escreval("Altura m�dia das mulheres: ", totalAlturaMulheres)
escreval("N� de homens: ", homens)
escreval(porcentagemHomens,"% s�o homens")
escreval(porcentagemMulheres,"% s�o mulheres")

         

Fimalgoritmo