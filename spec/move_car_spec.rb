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


    it "deberia girar a 'O' al introducir el texto 'N' con la instruccion I" do
        posicionInicial = "3,3"
        orientacionInicial = "N"
        comandos = "I"
        resultado = returnArrayAndOrientation(posicionInicial, orientacionInicial, comandos)
        expect(resultado).to eq([[3,3], "O"])
    end

    it "deberia girar a 'O' al introducir el texto 'E' con la instruccion II" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandos = "II"
        resultado = returnArrayAndOrientation(posicionInicial, orientacionInicial, comandos)
        expect(resultado).to eq([[3,3], "O"])
    end

    it "deberia girar a 'N' al introducir el texto 'O' con la instruccion III" do
        posicionInicial = "3,3"
        orientacionInicial = "O"
        comandos = "III"
        resultado = returnArrayAndOrientation(posicionInicial, orientacionInicial, comandos)
        expect(resultado).to eq([[3,3], "N"])
    end

    it "deberia girar a 'O' al introducir el texto 'S' con la instruccion III" do
        posicionInicial = "3,3"
        orientacionInicial = "S"
        comandos = "III"
        resultado = returnArrayAndOrientation(posicionInicial, orientacionInicial, comandos)
        expect(resultado).to eq([[3,3], "O"])
    end

    it "deberia avanzar a [3,2] girando a 'S' al introducir el texto 'S' con la instruccion A y la posicion inicial [3,3]" do
        posicionInicial = "3,3"
        orientacionInicial = "S"
        comandos = "A"
        resultado = returnArrayAndOrientation(posicionInicial, orientacionInicial, comandos)
        expect(resultado).to eq([[3,2], "S"])
    end
end


