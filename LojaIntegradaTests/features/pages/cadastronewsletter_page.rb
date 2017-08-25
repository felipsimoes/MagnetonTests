class CadastroNewsletterPage < SitePrism::Page

  # Declare todos os elementos da página
  # element :button,       pending 'Insert button identificator'
  element :newsletter_field, "input[name='email']" 
  element :newsletter_button, :xpath, "//*[@id='corpo']/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button" 
  element :newsletter_confirmation, :xpath, "//*[@id='corpo']/div/div[1]/div[1]/div[2]/div/div/div/div/div[2]/span"
  element :newsletter_alert, :xpath, "//*[@id='corpo']/div/div[1]/div[1]/div[2]/div/div/div/div/p[2]"
  
  def initialize
    @email = Faker::Internet.email
  end

  def cadastrar_email
    newsletter_field.set @email
    newsletter_button.click
  end

end