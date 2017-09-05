Before('@email') do
  $home = HomePage.new  
end

######### DADO #########
Dado(/^que eu esteja na home da Loja$/) do
  $home.load
end

######### QUANDO #########
Quando(/^eu cadastro meu email na Newsletter$/) do
  $home.cadastrar_newsletter
end

Quando(/^eu tento cadastrar novamente meu email na Newsletter$/) do
  $home.cadastrar_newsletter
end
######### ENTãO #########
Então(/^eu visualizo a mensagem de confirmação$/) do
  expect($home.newsletter.confirmation).to have_content("Obrigado por se inscrever! Aguarde novidades da nossa loja em breve")
end

Então(/^eu visualizo a mensagem de aviso$/) do
  expect($home.newsletter.alert).to have_content("Seu e-mail já consta em nossa newsletter.")
end