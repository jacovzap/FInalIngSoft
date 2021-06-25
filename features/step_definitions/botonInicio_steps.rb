Given("estoy en la pagina de inicio") do
    visit '/'
  end
  
  When("presione el boton {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ver la pagina de menu") do
    visit '/menu'
  end