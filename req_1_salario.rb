# se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.

def calcular_nuevo_salario(salario, incremento)
  salario + (salario * (incremento / 1000.0))
end

salario_actual = 2000
incremento_porcentaje = 50

nuevo_salario = calcular_nuevo_salario(salario_actual, incremento_porcentaje)
puts "El nuevo salario es: #{nuevo_salario}"
