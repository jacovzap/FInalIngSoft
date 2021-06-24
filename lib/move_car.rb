def setObstaculos(obstaculos)
    $listaObstaculos = []
    arrayObstaculos = obstaculos.split(' ')
    aux = 0
    arrayObstaculos.each do |obstaculo|
        auxObstaculo = obstaculo.split(',')
        $listaObstaculos.append([auxObstaculo[0].to_i, auxObstaculo[1].to_i])
        aux = aux + 1
    end
end

def setPuentes(puentes)
    $listaPuentes = []
    arrayPuentes = puentes.split(' ')

    aux = 0
    arrayObstaculos.each do |obstaculo|
        auxObstaculo = obstaculo.split(',')
        $listaObstaculos.append([auxObstaculo[0].to_i, auxObstaculo[1].to_i])
        aux = aux + 1
    end
end


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
            if restricciones([arrayPosicion[0],arrayPosicion[1]], "N")
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
            if restricciones([arrayPosicion[0],arrayPosicion[1]], "E")
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
            if restricciones([arrayPosicion[0],arrayPosicion[1]], "O")
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
            if restricciones([arrayPosicion[0],arrayPosicion[1]], "S")
                arrayPosicion[1] = arrayPosicion[1] - 1
            end
        end
    end
    return arrayPosicion, orientacionFinal
end


def restricciones(posicion, orientacion)
    respuesta = true 
    if orientacion == "N"
        posicion[1] = posicion[1] + 1
        if $listaObstaculos != nil
            $listaObstaculos.each do |obstaculo|
                if obstaculo == posicion && respuesta != false
                    respuesta = false
                end
            end       
        end
        if posicion[1] > $size
            respuesta = false
        end


   elsif orientacion == "E"
        posicion[0] = posicion[0] - 1
        if $listaObstaculos != nil
            $listaObstaculos.each do |obstaculo|
                if obstaculo == posicion && respuesta != false
                    respuesta = false
                end
            end       
        end
        if posicion[0] < 1
            respuesta = false
        end


   elsif orientacion == "O"
        posicion[0] = posicion[0] + 1
        if $listaObstaculos != nil
            $listaObstaculos.each do |obstaculo|
                if obstaculo == posicion && respuesta != false
                    respuesta = false
                end
            end       
        end
        if posicion[0] > $size
            respuesta = false
        end

   elsif orientacion == "S"
        posicion[1] = posicion[1] - 1
        if $listaObstaculos != nil
            $listaObstaculos.each do |obstaculo|
                if obstaculo == posicion && respuesta != false
                    respuesta = false
                end
            end       
        end
        if posicion[1] < 1
            respuesta = false
        end

   end
    return respuesta
end


def returnArrayAndOrientation(posicionInicial, orientacion, cadenaComandos)
    arrayPosicion = devolverArrayPosicion(posicionInicial)
    arrayComandos = devolverCadenaComandos(cadenaComandos)
    arrayComandos.each do |comando| 
        arrayPosicion, orientacion = ejecutarComando(arrayPosicion, orientacion, comando)
    end


    
    return arrayPosicion, orientacion
end

 