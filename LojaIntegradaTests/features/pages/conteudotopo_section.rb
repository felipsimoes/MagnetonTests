# Section class defining most pages top content
class ConteudoTopoSection < SitePrism::Section
  element :minha_conta_link, 'div.superior.row-fluid.hidden-phone > div.span4 '\
            '> ul > li:nth-child(2) > a'
end
