
When('visito la pagina de resultados') do
    visit '/resultado'
  end
  

Then("deberia ver el mensaje con la orientacion y el mensaje {string}") do |a| 
    #pending
    #expect(page.body).to match /#{a}/m
end

