# Paso 1: Crear el programa calcular_imc.rb
# Paso 2: Crearemos una función para realizar el cálculo del IMC. Esta función recibirá
# por parámetros dos valores.

# Metodo que calcula el imc
def formula_imc(valor1, valor2)
  imc = valor1 / valor2**2
end

# Paso 3: Creamos una función que evalúe condicionalmente el índice de la persona
# en función de los datos de la tabla entregada. Esta función recibirá por parámetro el
# cálculo del IMC.

# Metodo que compara y muetra el imc 
def calcular_imc(imc)
		puts("Tu índice de masa corporal es => #{imc}")
	if imc < 18.5
		puts "El índice calculado es Bajo de peso"
	elsif imc <= 18.5 || imc <= 24.9
		puts "El índice calculado es Normal"
	elsif imc <= 25.0 || imc <= 29.9
		puts "El índice calculado es Sobrepeso"
		subCategoria(imc)
	else
		puts "El índice calculado es Obesidad"
		subCategoria(imc)
	end
end 

#Desafio.
# Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.
#Se crea funcion en linea 26

#Metodo qeu calcula la sub categoria
def subCategoria(imc)
	if imc >= 30 && imc <= 34.9
		puts "obesidad grado I: Moderado"
	elsif imc >=35 && imc <= 39.9
		puts "Obesidad grado II: Severo"
	else
		puts "Obesidad grado III: Muy severo"
	end
end

# Paso 4: Solicitaremos al usuario mediante gets los datos que necesitamos para
# hacer el cálculo.Esos datos deben ser convertidos a flotantes dado que la fórmula
# generalmente retorna números decimales.

# solicitar el ingreso de pero y altura
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

# Paso 5: Mostraremos la información calculada almacenando en una variable
# resultado. Esta variable tendrá asignado como valor el llamado a la función
# calcular_imc y le pasaremos como argumento la función formula_imc.
# Cuando invocamos formula_imc, debemos pasarle los argumentos requeridos para
# que se realice el cálculo, estos argumentos serán los datos obtenidos mediante
# gets.

resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)

