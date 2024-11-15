Algoritmo "ESTRUTRA SENAO - CONTA A PAGAR"
//Exercicio para exemplificar o funcionamento do SE e SENAO
//SENAO e executado juntamente com o comando de decisao SE
//Caso a condicao determinada no SE seja falsa, entao sera executado o bloco de codigo do SENAO

Var
   //Criando uma variavel do tipo caracter para receber a resposta do usuario
   resposta : caracter
Inicio
   //Criacao de uma situacao
   escreval("# Voce esta com sede")
   escreval("# Entao entra em um restaurante para comprar uma conquinha gelada")
   escreval("# A conta deu R$8000,99")
   escreval("Vai Pagar a Conta? (Sim/Nao)")
   //Codigo recebe a resposta do usuario e armazena na variavel "resposta"
   leia(resposta)
   escreval("")

   //Bloco SE para verificar a resposta do usuario
   //Dentro do comando SE temos varias condicoes combinadas com o operador OU
   //O operador OU significa que, se qualquer uma das condicoes for verdadeira, o bloco de codigo do SE sera executado
   Se (resposta = "Sim") ou (resposta = "SIM") ou (resposta = "sim") ou (resposta = "S") ou (resposta = "s") entao
      //Caso o usuario responda que vai pagar
      escreval("- Voce pega a sua carteira")
      escreval("- Olha para ela, e ve que nao tem dinheiro para pagar a conta")
      escreval("- Por nao ter dinheiro para pagar a conta, voce e preso")
   senao
      //Bloco SENAO sera executado se nenhuma das condicoes do SE for verdadeira
      escreval("- Voce, por ficar abismado com o preco, decide que nao vai pagar")
      escreval("- Ve uma oportunidade e sai correndo para fora do restaurante")
      escreval("- Mas voce e sedentario, logo apos 2 segundos ja se cansa")
      escreval("- O policial te captura e voce e preso")
   fimse
   //Este "fimse" marca o final do bloco de comandos do SE e SENAO

   escreval("") //Espaco em branco para organizacao da exibicao

   escreval("Fim de jogo para voce")
Fimalgoritmo