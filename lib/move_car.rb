
def devolverArrayPosicion(numero)
    numeros = numero.split(',')
    array = [numeros[0].to_i, numeros[1].to_i]

    return array
end


def devolverCadenaComandos(comandos)
    arrayComandos = comandos.split('')
    return arrayComandos
end


def returnArrayAndOrientation(posicionInicial, orientacionInicial, cadenaComandos)
    arrayPosicion = devolverArrayPosicion(posicionInicial)
    arrayComandos = devolverCadenaComandos(cadenaComandos)
    orientacionFinal = orientacionInicial
    arrayComandos.each do |comando| 
        if orientacionInicial == "N"
            if comando == "D"
                orientacionFinal = "E"
            elsif comando == "I"
                orientacionFinal = "O"

            end
        end
    
    end
    return arrayPosicion, orientacionFinal
end