programa {
  inclua biblioteca Util
  inclua biblioteca Matematica
  funcao inicio() {
    EX07()  
  }

  funcao EX01() {
    inteiro cronometro
    inteiro tempoDesejado
    caracter resposta

    
    faca {
      escreva ("\nEscolha o tempo desejado: ")
      leia (tempoDesejado)
      se (tempoDesejado < 1) {
        escreva("O tempo precisa ser maior que ",tempoDesejado, ". Escolha um número entre 1 e 59 \nTente Novamente")
      }senao se(tempoDesejado > 59) {
        escreva("O tempo precisa ser menor que ",tempoDesejado, ". Escolha um número entre 1 e 59 \nTente Novamente")
      }senao {
        escreva ("Tempo de ", tempoDesejado, " Segundos Aceito.\n")
      }

      
    }enquanto ((tempoDesejado <1) ou (tempoDesejado >59))

    para( tempoDesejado; tempoDesejado >=0; tempoDesejado -- ){
      escreva(tempoDesejado, "\n")
      Util.aguarde(1000)
      limpa()
    }

    escreva("Quer tentar novamente? S OU N: ")
    leia(resposta)

    se (resposta == 's' ou 'S') {
      EX01()
    } senao {
      escreva("Fim")
    }
  }

  funcao EX02(){
    inteiro numeroDigitado
    inteiro limiteTabuada
    inteiro contador = 0
    
    escreva("Escolha um número para ser calculado a sua tabuada: ")
    leia(numeroDigitado)

    escreva("\nEscolha um limite para ser calculado: ")
    leia(limiteTabuada)

    escreva("\nMultiplicação:\n")

    para(contador; contador <= limiteTabuada; contador++){
      escreva(numeroDigitado, " X ", contador, " = ", numeroDigitado * contador,"\n" )
    }

    se(contador >= limiteTabuada) {
        contador = 0
      }
    escreva("\nSoma:\n")

    enquanto(contador <= limiteTabuada){
      escreva(numeroDigitado, " + ", contador, " = ", numeroDigitado + contador,"\n" )
      contador++
    }

    se(contador >= limiteTabuada) {
        contador = 0
      }
    escreva("\nSubtração:\n")

    para(contador; contador <= limiteTabuada; contador++){
      escreva(numeroDigitado, " - ", contador, " = ", numeroDigitado - contador,"\n" )
    }

    se(contador >= limiteTabuada) {
        contador = 0
      }
    escreva("\nDivisão:\n")

    enquanto(contador <= limiteTabuada){
      escreva(numeroDigitado, " / ", contador, " = ", numeroDigitado / contador,"\n" )
      contador++
    }

    se(contador >= limiteTabuada) {
        contador = 0
      }
    escreva("\nResto da Divisão:\n")

    para(contador; contador <= limiteTabuada; contador++){
      escreva(numeroDigitado, " % ", contador, " = ", numeroDigitado % contador,"\n" )
    }
  }

  funcao EX03(){
    //CRIA E ARMAZENA DOIS NÚMEROS INTEIROS
    inteiro primeiroNumero = 0
    inteiro segundoNumero = 0
    inteiro numeroMaior = 0
    inteiro numeroMenor = 0
    inteiro contador = 0

    escreva("Digite o primeiro número: ")
    leia(primeiroNumero)

    escreva("\nEscreva o segundo número: ")
    leia(segundoNumero)

    //Processa os dados e printa na tela os números pares
    se (primeiroNumero > segundoNumero) {
      numeroMaior = primeiroNumero
      numeroMenor = segundoNumero
      numeroMaior --
      numeroMenor ++
    } senao se(segundoNumero > primeiroNumero) {
      numeroMaior = segundoNumero
      numeroMenor = primeiroNumero

      numeroMaior --
      numeroMenor ++
    }senao se(primeiroNumero == segundoNumero) {
      escreva("Você não pode digitar números iguais\n")
    }

    para(numeroMenor; numeroMenor <=numeroMaior; numeroMenor++) {
      contador++  
      se (numeroMenor %2 == 0) {
        escreva(numeroMenor, "\n")
    }
    }
    

  }

  funcao EX04(){
    inteiro numeroDigitado
    inteiro numeroEscolhido


    faca {

      escreva("\nMestre - Escolha um número: ")
      leia(numeroDigitado)

      escreva("\nTente acertar o número! : ")
      leia(numeroEscolhido)
      

      se ((numeroEscolhido == numeroDigitado - 1) ou (numeroEscolhido == numeroDigitado + 1)) {
        escreva("\nEsta fervendo")
      }senao se ((numeroEscolhido == numeroDigitado - 2) ou (numeroEscolhido == numeroDigitado + 2)){
        escreva("\nEsta quente")
      }senao se ((numeroEscolhido == numeroDigitado - 3) ou (numeroEscolhido == numeroDigitado + 3)){
        escreva("\nEsta esquentando")
      }senao {
        escreva("\nEstá frio")
      }
    }enquanto(numeroDigitado != numeroEscolhido)

    escreva("\nVocê acertou!!")
  }

  funcao EX05() {
    cadeia usuario = "admin"
    cadeia senha = "admin"
    cadeia usuarioDigitado
    cadeia senhaDigitada
    inteiro tenativas = 0
    logico auth = falso

    faca {
      
      se(tenativas == 2){
        escreva("Esta é sua ultima tentativa, se errar seu acesso será bloqueado\n")
      }

      escreva("Digite o usuario: ")
      leia(usuarioDigitado)
      escreva("Digite a sua senha: ")
      leia (senhaDigitada)

      se ((usuarioDigitado != usuario) e (senhaDigitada != senha)) {
        escreva("Usuario e senha incorreto\n")
        tenativas++
      } senao {
        se(usuarioDigitado != usuario) {
          escreva("Usuario incorreto\n")
          tenativas++
        }senao se(senhaDigitada != senha) {
          escreva("Senha incorreta\n")
          tenativas++
        }senao{
          escreva("login Feito com sucesso\n")
          auth = verdadeiro
        }
      }
    }enquanto (tenativas < 3 e auth == falso)

    se (tenativas == 3) {
      escreva("Acesso bloqueado\n")
      }
  }

  funcao EX06() {
    inteiro andares

    escreva("Quantos andares: ")
    leia(andares)

    para (inteiro i=1; i<=andares; i++) {
      para(inteiro x = andares-i; x>0; x-- ){
        escreva(" ")
      }
      para (inteiro j=1; j<=(i*2)-1; j++) {
        escreva("*")
    }
      escreva("\n")
    }

  }

  funcao EX07() {
    inteiro altura
    inteiro largura

    escreva("Escreva altura: ")
    leia(altura)
    escreva("Largura: ")
    leia (largura)

    

    para(inteiro j=1; j<=altura; j++) {
      para(inteiro i = 1; i<=largura; i++) {
      escreva("* ")
    }
      escreva("\n")
    }
  }
}
