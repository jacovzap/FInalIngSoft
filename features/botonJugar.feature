Feature:
Como: Usuario de la aplicación
Quiero: Un botón que me envíe directamente al juego tras elegir mis opciones
Para: Iniciar el juego tras mis elecciones/personalizaciones


Scenario:
    
    Given estoy en la pagina de menu 
    When presiono ell boton "A JUGAR!"
    Then deberia ver la pagina donde introducir los datos 