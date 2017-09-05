class NewsletterSection < SitePrism::Section

  element :email_field, "input[name='email']" 
  element :button, :xpath, "//*[@id='corpo']/div/div[1]/div[1]/div[2]/div/div/div/div/div[1]/button" 
  element :confirmation, :xpath, "//*[@id='corpo']/div/div[1]/div[1]/div[2]/div/div/div/div/div[2]/span"
  element :alert, :xpath, "//*[@id='corpo']/div/div[1]/div[1]/div[2]/div/div/div/div/p[2]"

end