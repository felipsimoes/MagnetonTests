######### DADO #########
Dado(/^que eu esteja na página de Cadastro$/) do
  @home = Pages.home
  @home.load
  @email = @home.getEmail
  @senha = @home.getSenha
  @cadastro = CadastroPage.new
end

######### QUANDO #########
Quando(/^eu preencho os campos obrigatórios$/) do
  @home.conteudo_topo.minha_conta_link.click
  @login = LoginPage.new
  @login.email_cadastrar_field.set @email
  @login.cadastrar_btn.click
  @cadastro.criar_dados_identificacao @email, @senha
  @cadastro.criar_pessoa_fisica
end

Quando(/^eu preencho os campos obrigatórios com senha curta$/) do
  @home.conteudo_topo.minha_conta_link.click
  @login = LoginPage.new
  @email2 = Faker::Internet.email
  @senha2 = "1124"
  @login.email_cadastrar_field.set @email2
  @login.cadastrar_btn.click
  @cadastro.criar_dados_identificacao @email2, @senha2
  @cadastro.criar_pessoa_fisica
end

Quando(/^eu preencho email para cadastro com email já utilizado$/) do
  @home.conteudo_topo.minha_conta_link.click
  @login = LoginPage.new
  @login.email_cadastrar_field.set @email
  @login.cadastrar_btn.click
end

######### ENTÃO #########
Então(/^eu visualizo a confirmação de cadastro$/) do
  expect(@cadastro.criado_sucesso.text).to have_content("Cliente criado com sucesso.")
end

Então(/^eu visualizo um alerta de email já cadastrado$/) do
  expect(@login.alerta.text).to have_content("Já existe um cliente cadastrado com este email.")
end

Então(/^eu visualizo o alerta de tamanho de senha$/) do
  expect(@cadastro.validacao_senha.text).to have_content("Certifique-se de que o valor tenha no mínimo 5 caracteres (ele possui 4).")
end