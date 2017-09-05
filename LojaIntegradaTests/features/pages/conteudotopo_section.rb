class ConteudoTopoSection < SitePrism::Section

  # Declare all the elements of this page
  # element :button,       pending 'Insert button identificator'
  element :minha_conta_link, "div.superior.row-fluid.hidden-phone > div.span4 > ul > li:nth-child(2) > a"
  
end
