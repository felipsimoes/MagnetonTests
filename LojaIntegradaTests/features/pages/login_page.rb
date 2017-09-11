class LoginPage < SitePrism::Page

  element :email_logar_field, "#corpo > div > div.cadastro > div.cadastro-logar.row-fluid > div:nth-child(1) > div > form > fieldset > div:nth-child(2) > div > #id_email"
  element :email_cadastrar_field, "div.cadastro-logar.row-fluid > div:nth-child(2) > div > form > fieldset > div > #id_email"
  element :cadastrar_btn, "div.cadastro-logar.row-fluid > div:nth-child(2) > div > form > fieldset > div > button"
  element :alerta, "#corpo > div > div.alert.alert-danger.alert-geral"

end