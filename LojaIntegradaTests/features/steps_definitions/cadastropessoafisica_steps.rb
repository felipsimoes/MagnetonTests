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

######### ENTÃO #########
Então(/^eu visualizo a confirmação de cadastro$/) do
  expect(@cadastro.criado_sucesso.text).to have_content("Cliente criado com sucesso.")
end