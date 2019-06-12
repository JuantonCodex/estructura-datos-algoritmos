# Muestra los N primeros número primos mayores a M

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

def muestraNumerosPrimos(m,n)
	cont = 0
	while cont < n
			
		if revisaPrimo(m) == true
			cont = cont + 1
			puts m
		end

		# Aumenta en una unidad M
		m = m + 1
	end

end
muestraNumerosPrimos(1,2)