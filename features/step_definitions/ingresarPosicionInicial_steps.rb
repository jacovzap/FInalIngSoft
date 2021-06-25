Given('estoy en la pagina de menu') do
    visit '/menu'
  end
  
  When('selecciono {string} del campo {string}') do |string, string2|
    fill_in(string2, :with => string)
  end
  
  When('presiono el boton {string}') do |string|
    click_button(string)
  end
  
  Then('deberia ver {string}') do |string|
    expect(page.body).to match /#{string}/m
  end