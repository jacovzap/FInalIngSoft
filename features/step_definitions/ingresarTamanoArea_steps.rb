Given("estoy en la pagina de menu") do
    visit '/menu'
  end
  
  When('selecciono el tamanio {string} del campo {string}') do |string, string2|
    fill_in(string2, :with => string)
  end
  
  When('presiono el boton de tamanio {string}') do |string|
    click_button(string)
  end
  
