# language: pt
Funcionalidade: Criar usuário de Pessoa Física

  Contexto:
    Dado que eu esteja na página de Cadastro

  @cadastro @pf
  Cenario: Cadastro de Pessoa Física
    Quando eu preencho os campos obrigatórios
    Então eu visualizo a confirmação de cadastro

  @cadastro
  Cenario: Cadastro de mesmo email
    Quando eu preencho email para cadastro com email já utilizado
    Então eu visualizo um alerta de email já cadastrado
  
  @cadastro @requisitosenha
  Cenario: Requisito de senha
    Quando eu preencho os campos obrigatórios com senha curta
    Então eu visualizo o alerta de tamanho de senha