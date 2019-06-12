# Hallar una división usando restas sucesivas
# Ejemplo 15/4:
# 15 - 4 = 11
# 11 - 4 = 7
# 7 - 4 = 3
# La cantidad de veces que se resta es 3


def divide(a,b)
	contador = 0

	while a >= b
		contador = contador + 1

		# Guardamos el residuo en a
		a = a - b
	end

	# Retornamos la cantidad de veces que se restó
	return contador
end


# Usando la estructura anterior, calculamos el residuo
def residuo(a,b)
	contador = 0

	while a >= b
		contador = contador + 1

		# Guardamos el residuo en a
		a = a - b
	end
	
	return a
end

puts '=== División:'
puts divide(10,3)

puts '=== Residuo:'
puts residuo(10,3)

