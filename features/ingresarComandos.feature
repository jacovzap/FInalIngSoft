Feature:
Como: Usuario de la aplicación
Quiero: Ingresar comandos para el movimiento del auto
Para: Establecer como y hacia donde se moverá el auto

Scenario:
    
    Given estoy en la pagina de datos iniciales 
    When introduzco un comando valido para el movimiento del auto
    Then deberia registrar los comandos con los cuales se movera el auto


