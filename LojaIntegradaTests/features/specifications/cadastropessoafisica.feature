# language: pt
Funcionalidade: Criar usuário de Pessoa Física

  Contexto:
    Dado que eu esteja na página de Cadastro

  #Cenario: Tela de cadastro de Pessoa
    #Quando eu preencho o email e clico em cadastrar
    #Então eu vou para a página de preenchimento de dados

  @cadastro @pf
  Cenario: Cadastro de Pessoa Física
    Quando eu preencho os campos obrigatórios
    Então eu visualizo a confirmação de cadastro

# A senha precisa ter no mínimo 5 caracteres