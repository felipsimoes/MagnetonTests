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

# Campos obrigatórios: Nome Completo, CPF, Celular, CEP, Endereço, Número, Bairro, Cidade
# Os campos Endereço, Bairro e Cidade devem ser auto-preenchidos quando se informar o CEP;
# A senha precisa ter no mínimo 5 caracteres

# No final do processo é exibida a mensagem: "Cliente criado com sucesso."
# Campo CPF, Celular e CEP deve aceitar apenas números