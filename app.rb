require './lib/move_car.rb'
require 'sinatra'


get '/' do
    erb :bienvenida
end

get '/menu' do
    erb :menu
end

get '/datosIniciales' do
    $size = params[:size]
    $cars = params[:cars]
    setSize($size)
    erb :datosIniciales
end


post '/ventanaComandos' do
    obstaculos = params[:obstaculos]
    puentes = params[:puentes]
    setObstaculos(obstaculos)
    #setPuentes(puentes)
    if $cars.to_i == 1
        $inicial = params[:posicionInicial]
        $orientacionInicial = params[:orientacion]

        erb :ventanaComandos
    else
        $inicial = params[:posicionInicial]
        $inicial2 = params[:posicionInicial2]
        $orientacionInicial = params[:orientacion]
        $orientacionInicial2 = params[:orientacion2]
   
        erb :ventanaComandos
    end
end


get '/resultado' do
    if $cars.to_i == 1
        comandos = params[:comandos]
        @resultado = returnArrayAndOrientation($inicial, $orientacionInicial, comandos)
        erb :resultado
    else
        comandos = params[:comandos]
        comandos2 = params[:comandos2]
        @resultado = returnArrayAndOrientationForTwoCars($inicial, $orientacionInicial, comandos, $inicial2, $orientacionInicial2, comandos2)
        erb :resultado
    end

end
