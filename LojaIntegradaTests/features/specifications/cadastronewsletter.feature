# language: pt
Funcionalidade: Cadastro De Newsletter

  Contexto: Home da Loja
    Dado que eu esteja na home da Loja

  @email
  Cenario: Cadastro de email
    Quando eu cadastro meu email na Newsletter
    Então eu visualizo a mensagem de confirmação

  Cenario: Notificação de email já cadastrado
    Quando eu tento cadastrar novamente meu email na Newsletter
    Então eu visualizo a mensagem de aviso