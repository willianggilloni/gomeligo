programa {
  funcao inicio() {
    
    inteiro start, end

faca{
    escreva("Digite o valor inicial: ")
    leia(start)

    escreva("Digite o valor final: ")
    leia(end)
  }enquanto(start > end)
  
  se(start%2 == 1)
  start += 1

escreva("\nNumeros pares")

    para(inteiro i = start; i <= end; i = i + 2){
    escreva("\n", start)
    }

    se(end % 2 == 0)
    start -= 1

    escreva("\nNumeros impares")
    
    para(inteiro j = end; j >= start; j = j - 2){
    escreva("\n", j)
    }
  }
}
