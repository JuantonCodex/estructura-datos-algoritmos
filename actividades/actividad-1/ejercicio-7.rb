# Revisa si un número es primo o no
def revisaPrimo(numero)
	cont = 0
	for i in 2..numero-1
		if numero % i == 0
			cont =+ 1
		end
	end

	# Asigna verdadero o falso
	if cont > 0
		return false
	else
		return true
	end
end

puts revisaPrimo(17)