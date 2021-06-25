Feature:
Como: Usuario de la aplicación
Quiero: Poder determinar la posición inicial del auto
Para: Decidir la posición inicial hacia donde apunta el auto desde el inicio

Scenario:
    
    Given estoy en la pagina de datos iniciales 
    When escribo (N,E,O,S) en la casilla de orientacion
    Then deberia registrar la orientacion inicial del auto

