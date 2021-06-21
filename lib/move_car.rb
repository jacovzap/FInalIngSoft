
def devolverArrayPosicion(numero)
    numeros = numero.split(',')
    array = [numeros[0].to_i, numeros[1].to_i]

    return array
end


def devolverCadenaComandos(comandos)
    arrayComandos = comandos.split('')
    return arrayComandos
end


