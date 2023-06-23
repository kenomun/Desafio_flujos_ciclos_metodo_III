# te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego


def adivina_el_numero(n)#Parametro
    numero_secreto = rand(1..n)
    
    puts "'Adivina el número'"
    puts "Elige un número entre 1 y #{n}:"
    
    adivinado = false
    intento = 0

    while !adivinado #condicion para mantener el ciclo
      intento += 1
      numero_usuario = gets.chomp.to_i
      
      if numero_usuario == numero_secreto
        puts "¡Ganaste! El número secreto era #{numero_secreto}, Te tomó  #{intento} intentos para encontrarlo."
        adivinado = true
      elsif numero_usuario < numero_secreto && numero_usuario != 0
        puts "El número es mayor. Intenta nuevamente (o para salir ingresa 0):"
      elsif numero_usuario > numero_secreto
        puts "El número es menor. Intenta nuevamente (o para salir ingresa 0):"
      else
        puts "Adios !VUELVE PRONTO¡"
        adivinado = true
      end
    end
  end
  
  rango_numeros = 1000 #rango en que la computadora seleccionara un numero al azar
  
  adivina_el_numero(rango_numeros)#Argumento
  