Feature:
Como: Usuario de la aplicación
Quiero: Un botón para poder ingresar la posición inicial, orientación y obstáculos
Para: Registrar los datos iniciales y pasar a la pagina de comandosnida


Scenario:
    Given estoy en la pagina de datos iniciales
    When presiono el boton "Ingresar"
    Then deberia ingresar los datos anotados y dirigirme a la pagina de comandos