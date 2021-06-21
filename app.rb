require './lib/move_car.rb'
require 'sinatra'


get '/' do
    erb :bienvenida
end


post '/menu' do
    erb :menu
end

post '/datos iniciales' do
    erb :datosIniciales
end


post '/ventana de comandos' do
    erb :ventanaComandos 
end

