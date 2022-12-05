programa {

  inclua biblioteca Texto --> t

  funcao inicio() {
    inteiro idade, contador = 0
    real media = 0.0, soma = 0.0
    cadeia continua = "S"

    enquanto(t.caixa_alta(continua) == "S"){

        escreva("\nDigite a idade: ")
        leia(idade)

        soma += idade
        contador ++

        escreva("\nDeseja continuar (S/N)? ")
        leia(continua)

    }

  media = soma / contador

  escreva("\nA média das idades é : ", media)
  }
}
