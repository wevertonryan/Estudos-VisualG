Algoritmo "ESTRUTRA SE - CONTA A PAGAR"
//Exercicio para exemplificar o funcionamento do SE
//SE e um comando de decisao, na qual executa uma linha ou bloco de codigo baseado em uma condicao
//Caso a condicao seja verdadeira, executara o bloco de codigo; caso seja falsa, nao executara

//Exemplo
Var
   //Criando uma variavel do tipo inteiro para receber a resposta do usuario
   resposta : inteiro
Inicio
   //Criacao de uma situacao
   escreval("# Voce esta com sede")
   escreval("# Entao entra em um restaurante para comprar uma conquinha gelada")
   escreval("# A conta deu R$8000,99")
   escreval("O que voce faz?:")
   //Opcoes
   escreval("[1] Pagar a Conta")
   escreval("[2] Sair correndo")
   //Codigo recebe a resposta do usuario e armazena na variavel "resposta"
   leia(resposta)
   escreval("")

   //Aqui e onde a estrutura SE entra em acao
   //Temos a variavel "resposta" que esta armazenando a resposta do usuario
   {Se a variavel "resposta" for igual a "1", entao executarei esse bloco de codigo}
   Se (resposta = 1) entao
      escreval("- Voce pega a sua carteira")
      escreval("- Olha para ela, e ve que nao tem dinheiro para pagar a conta")
      escreval("- Por nao ter dinheiro para pagar a conta, voce e preso")
   fimse
   //Esse "fimse" determina onde e o fim do bloco de comando que esse "SE" executaria

   //Aqui e basicamente a mesma coisa, so muda a condicao, em vez de ser "1", sera "2"
   se (resposta = 2) entao
      escreval("- Voce, por ficar abismado com o preco, decide que nao vai pagar")
      escreval("- Ve uma oportunidade e sai correndo para fora do restaurante")
      escreval("- Mas voce e sedentario, logo apos 2 segundos ja se cansa")
      escreval("- O policial te captura e voce e preso")
   fimse

   //Caso a variavel "resposta" armazene um valor diferente de 1 ou 2, entao nenhum dos blocos anteriores sera executado, e viremos diretamente para ca
   escreval("")

   escreval("Fim de jogo para voce")
Fimalgoritmo