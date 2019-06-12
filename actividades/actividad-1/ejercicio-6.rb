# Calcular la suma de dígitos pares e impares de un número
def sumarParImpar(numero)
	sumaPar = 0
	sumaImpar = 0

	while numero > 0
		resto = numero % 10

		# Valida si es par
		if resto % 2 == 0
			sumaPar = sumaPar + resto

		# Valida si es impar
		else
			sumaImpar = sumaImpar + resto
		end

		# Actualizo el número retirando su último dígito contantemente
		numero = numero / 10

	end

	return sumaPar, sumaImpar
end
puts sumarParImpar(1234)