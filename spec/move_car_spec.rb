require './lib/move_car.rb'


RSpec.describe "realizar el movimiento del carro" do
    it "deberia devolver [1,2] al introducir el texto 1,2" do
        numero = "1,2"
        resultado = devolverArrayPosicion(numero)
        expect(resultado).to eq([1,2])
    end

    it "deberia devolver [3,3] al introducir el texto 3,3" do
        numero = "3,3"
        resultado = devolverArrayPosicion(numero)
        expect(resultado).to eq([3,3])
    end

    it "deberia devolver 'O' al introducir el texto O" do
        orientacion = "O"
        comandos
        resultado = devolverOrientacion(orientacion)
        expect(resultado).to eq("O")
    end


    it "deberia devolver 'O' al introducir el texto O" do
        orientacion = "O"
        resultado = devolverOrientacion(orientacion)
        expect(resultado).to eq("O")
    end

end


