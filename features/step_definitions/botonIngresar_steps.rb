When("estoy en la pagina de datos iniciales") do
    visit '/datosIniciales'
end

When("presiono el boton {string}") do |string|
  #visit '/datosIniciales'
  click_button(string)
end

Then("deberia ingresar los datos anotados y dirigirme a la pagina de comandos") do
  visit '/ventanaComandos'
end