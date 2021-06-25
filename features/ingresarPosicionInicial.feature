Feature:
Como: Usuario de la aplicación
Quiero: Poder determinar la posición inicial del auto
Para: Decidir donde inicia mi auto/s en el juego

Scenario:
    
    Given estoy en la pagina de datos iniciales 
    When escribo dos numeros separados por una coma en la casilla de posicion inicial
    Then deberia registrar la posicion inicial del auto