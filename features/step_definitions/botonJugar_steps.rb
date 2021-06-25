Given("estoy en la pagina de menu") do
    visit '/menu'
  end
  
  When('presiono ell boton {string}') do |string|
    click_button(string)
  end
  
  Then("deberia ver la pagina donde introducir los datos") do
    visit '/datosIniciales'
  end