

def setSize(tamanio)
    $size = tamanio.to_i
end

def devolverArrayPosicion(numero)
    numeros = numero.split(',')
    array = [numeros[0].to_i, numeros[1].to_i]

    return array
end


def devolverCadenaComandos(comandos)
    arrayComandos = comandos.split('')
    return arrayComandos
end


def ejecutarComando(arrayPosicion, orientacionInicial, comando)
    orientacionFinal = orientacionInicial
    
    if($size == nil) 
        $size = 3 
    end

    if orientacionInicial == "N"
        if comando == "D"
            orientacionFinal = "E"
        elsif comando == "I"
            orientacionFinal = "O"
        elsif comando == "A"
            if arrayPosicion[1] + 1 <= $size
                arrayPosicion[1] = arrayPosicion[1] + 1
            end
        end
    end

    if orientacionInicial == "E"
        if comando == "D"
            orientacionFinal = "S"
        elsif comando == "I"
            orientacionFinal = "N"
        elsif comando == "A"
            if arrayPosicion[0] - 1 >= 1
                arrayPosicion[0] = arrayPosicion[0] - 1
            end
        end
    end

    if orientacionInicial == "O"
        if comando == "D"
            orientacionFinal = "N"
        elsif comando == "I"
            orientacionFinal = "S"
        elsif comando == "A"
            if arrayPosicion[0] + 1 <= $size
                arrayPosicion[0] = arrayPosicion[0] + 1
            end
        end
    end

    if orientacionInicial == "S"
        if comando == "D"
            orientacionFinal = "O"
        elsif comando == "I"
            orientacionFinal = "E"
        elsif comando == "A"
            if arrayPosicion[1] - 1 >= 1
                arrayPosicion[1] = arrayPosicion[1] - 1
            end
        end
    end
    return arrayPosicion, orientacionFinal
end



def returnArrayAndOrientation(posicionInicial, orientacion, cadenaComandos)
    arrayPosicion = devolverArrayPosicion(posicionInicial)
    arrayComandos = devolverCadenaComandos(cadenaComandos)
    arrayComandos.each do |comando| 
        arrayPosicion, orientacion = ejecutarComando(arrayPosicion, orientacion, comando)
    end

    return arrayPosicion, orientacion
end