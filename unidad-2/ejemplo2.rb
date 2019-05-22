# && basta con que una condición sea falsa, ahi para las comparaciones
# & este operador continúa evaluando las demás condiciones

# | este operador continúa evaluando las demás condiciones
# || basta con que una condición sea verdadera y deja de evaluar las siguientes condiciones

def evaluarPar(_numero)
	if _numero%2==0
		return 'numero par'
	else
		return 'numero impar'
	end
end

a = 15
puts evaluarPar(a)+ ' ' +a.to_s
