# Page class defining Home elements and basic actions
class HomePage < SitePrism::Page
  set_url 'https://tghcastro.lojaintegrada.com.br/'

  section :newsletter, NewsletterSection, 'div.interno'
  section :conteudo_topo, ConteudoTopoSection, 'div.conteudo-topo.span9'

  attr_reader :email, :senha

  def initialize
    @email = Faker::Internet.email
    @senha = Faker::Internet.password(8)
  end

  def cadastrar_newsletter
    newsletter.email_field.set @email
    newsletter.button.click
  end
end
