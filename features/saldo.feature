Feature: Visualizacao de Saldo
  Como um usuario logado
  Eu quero ver meu saldo na pagina inicial
  Para acompanhar minhas financas

  Cenario: Exibir o saldo correto na tela
    Dado que eu estou logado na minha conta
    E o servico de saldo esta mockado para retornar "R$ 5.000,00"
    
    Quando eu acesso a pagina inicial
    
    Entao o saldo exibido deve ser "R$ 5.000,00"