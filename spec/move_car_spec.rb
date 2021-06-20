require './lib/move_car.rb'


RSpec.describe "realizar el movimiento del carro" do
    it "deberia devolver [1,2] al introducir el texto 1,2" do
        numero = "1,2"
        resultado = devolverArrayPosicion(numero)
        expect(resultado).to eq([1,2])
    end


end


