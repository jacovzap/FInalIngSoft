
When('visito la pagina resultados') do
    visit '/resultado'
  end
  

Then("deberia ver el mensaje con la posicion y el mensaje {string}") do |message|
    pending
    #expect(page.body).to match /#{message}/m
end
