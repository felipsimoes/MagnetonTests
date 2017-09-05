class HomePage < SitePrism::Page
  
  set_url "https://tghcastro.lojaintegrada.com.br/"

  section :newsletter, NewsletterSection, "div.interno"
  section :conteudo_topo, ConteudoTopoSection, "div.conteudo-topo.span9"

  def initialize
    @email = Faker::Internet.email
  end

  def cadastrar_newsletter
    newsletter.email_field.set @email
    newsletter.button.click
  end

end