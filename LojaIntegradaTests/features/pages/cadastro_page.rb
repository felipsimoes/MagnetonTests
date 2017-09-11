class CadastroPage < SitePrism::Page

  element :confirmar_email, "#id_confirmacao_email"
  element :criar_senha, "#id_senha"
  element :confirmar_senha, "#id_confirmacao_senha"

  element :nome, "#id_nome"
  element :cpf, "#id_cpf"
  element :celular, "#id_telefone_celular"
  element :fixo, "#id_telefone_principal"
  element :sexo, "#id_sexo"
  element :dt_nascimento, "#id_data_nascimento"
  
  element :cep, "#id_cep"
  element :endereco, "#id_endereco"
  element :numero, "#id_numero"
  element :complento, "#id_complemento"
  element :referencia, "#id_referencia"
  element :bairro, "#id_bairro"
  element :cidade, "#id_cidade"
  element :estado, "#id_estado"

  element :criar_conta_button, "#formCadastroCompleto > form > div.acao-editar.row-fluid > div > button"

  element :criado_sucesso, "#corpo > div > div.alert.alert-success.alert-geral"

  def criar_pessoa_fisica
    criar_dados_identificacao 

    nome.set Faker::Name.name
    cpf.set Faker::Number.number(11)
    celular.set '13' + Faker::Number.number(9)
    cep.set '11055001'
    numero.set Faker::Number.number(3)
  
  end

  def criar_dados_identificacao (email, senha)
    confirmar_email.set email
    criar_senha.set senha
    confirmar_senha.set senha
  end

end
