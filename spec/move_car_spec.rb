require './lib/move_car.rb'


RSpec.describe "realizar el movimiento del carro" do
    it "deberia devolver [1,2] al introducir el texto 1,2" do
        numero = "1,2"
        comandos = 
        resultado = devolverArrayPosicion(numero)
        expect(resultado).to eq([1,2])
    end

    it "deberia devolver [3,3] al introducir el texto 3,3" do
        numero = "3,3"
        resultado = devolverArrayPosicion(numero)
        expect(resultado).to eq([3,3])
    end


    it "deberia devolver el array de instrucciones ['I','A','I','A','I','A','A'] al introducir como texto el comando IAIAIAA" do
        comandos = "IAIAIAA"
        resultado = devolverCadenaComandos(comandos)
        expect(resultado).to eq(["I","A","I","A","I","A","A"])
    end



end


