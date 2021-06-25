Feature:
Como: Usuario de la aplicación
Quiero: Que poder definir un área/campo por donde se moverá el auto
Para: Delimitar el área en el que voy a jugar

Scenario:
    
    Given estoy en la pagina menu
    When selecciono el tamanio "3" del campo "size"
    When presiono el boton de tamanio "A JUGAR!"
    Then deberia ir a la ventana de datos iniciales

