Algoritmo "ESTRUTRA SE ANINHADO - CONTA A PAGAR"
//Exercicio para exemplificar o funcionamento do SE ANINHADO
//SE ANINHADO e quando temos um SE dentro de outro SE
//Logo, para o SE ANINHADO ser executado, precisa ser executado o primeiro SE
//O SE ANINHADO depende do SE

//Exemplo
Var
   //Criando uma variavel do tipo inteiro para receber a resposta do usuario
   resposta : inteiro
   //Variavel para determinar o nivel de sorte do usuario
   sorte : inteiro
   //Essa variavel vai servir para definir o tipo de final que o usuario recebeu, se e bom ou ruim
   final : caracter
Inicio
   //Definindo a sorte que o jogador vai ter em determinadas situacoes
   //Com um numero aleatorio de 0 a 100
   //Dependendo da sorte do jogador, pode ter bons ou maus resultados
   aleatorio on //Isso liga o fator aleatorio para todo comando "leia"
   leia(sorte) //O comando "leia" aqui gera o numero aleatorio para a variavel "sorte"
   aleatorio off //Isso desliga o fator aleatorio do comando "leia"
   //Por algum motivo esse comando exibe o valor aleatorio na tela
   //Como eu nao quero que isso aconteca, limpo a tela para ocultar o valor gerado
   limpatela

   //Criacao de uma situacao
   escreval("# Voce esta com sede")
   escreval("# Entao entra em um restaurante para comprar uma conquinha gelada")
   escreval("# A conta deu R$8000,99")
   escreval("# O que voce faz?")
   escreval("[1] Pagar Conta")
   escreval("[2] Nao Pagar a Conta")
   //Codigo recebe a resposta do usuario e armazena na variavel "resposta"
   leia(resposta)
   escreval("")

   //Primeiro bloco SE
   Se (resposta = 1) entao
      escreval("- Voce pega a sua carteira")
      escreva("- Olha para ela, e ve que ")
      //Bloco SE ANINHADO
      //Aqui temos um SE dentro do primeiro SE, entao ele so sera executado se a condicao (resposta = 1) for verdadeira
      se (sorte > 80) entao
         escreval("tem dinheiro o suficiente")
         escreval("- Paga a sua divida e vai embora")
         final <- "Bom" //Define o final como "Bom"
      senao
         escreval("nao tem dinheiro para pagar a conta")
         escreval("- Por nao ter dinheiro para pagar a conta, voce e preso")
         final <- "Ruim"
      fimse
   senao //Este SENAO e executado caso a resposta nao seja igual a 1
      se (resposta = 2) entao
         escreval("- Voce, por ficar abismado com o preco, decide que nao vai pagar")

         se (sorte > 80) entao
            escreval("- Entao voce acha um 38 no chao por acaso")
            escreval("- Ameaça o dono do restaurante")
            escreval("- Vai embora sem ter que pagar nada")
            escreval("- E ganhou um 38 de brinde")
            final <- "INCRIVEL" //Define o final como "INCRIVEL"
         senao
            escreval("- Ve uma oportunidade e sai correndo para fora do restaurante")
            //Bloco SE ANINHADO com a logica condicional "E"
            //Ambas as condicoes (80 >= sorte) e (sorte > 50) precisam ser verdadeiras
            se (80 >= sorte) e (sorte > 50) entao
               escreval("- Por algum motivo milagroso voce nao e sedentario")
               escreval("e consegue correr mais que o policial")
               escreval("- Voce escapa sem pagar nada")
               final <- "Bom"
            senao
               escreval("- Mas voce e sedentario, logo apos 2 segundos ja se cansa")
               escreval("- O policial te captura e voce e preso")
               final <- "Ruim"
            fimse
         fimse
      senao
         //Caso a resposta do usuario nao seja nem 1 nem 2, entra neste bloco
         escreval("- Por algum motivo voce e meio retardado, e nao responde o garcom")
         escreval("- O povo do restaurante te acha um esquisito")
         escreval("- Por demorar demais para responder, ligam para a policia")
         escreval("- A policia chega e te levam para o hospicio")
         final <- "PESSIMO"
      fimse
   fimse
   //Este "fimse" fecha o bloco do primeiro SE
   escreval("")

   //Exibicao do final do jogo com base na variavel "final"
   escreval("=================")
   escreval("Final: ", final)
   escreval("=================")
Fimalgoritmo
