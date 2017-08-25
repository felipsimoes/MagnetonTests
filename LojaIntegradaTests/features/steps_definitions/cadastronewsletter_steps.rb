Before('@email') do
  $cadastro = CadastroNewsletterPage.new 
end
######### DADO #########
Dado(/^que eu esteja na home da Loja$/) do
  @home = HomePage.new
  @home.load
end

######### QUANDO #########
Quando(/^eu cadastro meu email na Newsletter$/) do
  $cadastro.cadastrar_email
end

Quando(/^eu tento cadastrar novamente meu email na Newsletter$/) do
  $cadastro.cadastrar_email
end
######### ENTãO #########
Então(/^eu visualizo a mensagem de confirmação$/) do
  expect($cadastro.newsletter_confirmation).to have_content("Obrigado por se inscrever! Aguarde novidades da nossa loja em breve")
end

Então(/^eu visualizo a mensagem de aviso$/) do
  expect($cadastro.newsletter_alert).to have_content("Seu e-mail já consta em nossa newsletter.")
end