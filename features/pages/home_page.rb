require 'site_prism'

# BOA PRÁTICA: Usamos classes do SitePrism
class HomePage < SitePrism::Page
  # set_url define a URL que o teste deve acessar
  set_url '/' 
  
  # element define um elemento único na página (o seletor é um exemplo)
  element :campo_saldo, '#saldo-usuario' 
end