Feature:
Como: Usuario de la aplicación
Quiero: Poder determinar la posición inicial del auto
Para: Decidir donde inicia mi auto/s en el juego

Scenario:
    
    Given estoy en la pagina de datos iniciales 
    When selecciono "1" del campo "cars"
    Then deberia registrar la posicion inicial del auto