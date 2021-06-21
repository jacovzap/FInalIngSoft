
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

        if orientacionInicial == "E"
            if comando == "D"
                orientacionFinal = "S"
            elsif comando == "I"
                orientacionFinal = "N"
            end
        end
    
        if orientacionInicial == "O"
            if comando == "D"
                orientacionFinal = "N"
            elsif comando == "I"
                orientacionFinal = "S"
            end
        end
    
        if orientacionInicial == "S"
            if comando == "D"
                orientacionFinal = "O"
            elsif comando == "I"
                orientacionFinal = "E"
            end
        end
    end

    return arrayPosicion, orientacionFinal
end