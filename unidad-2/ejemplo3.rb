# && basta con que una condición sea falsa, ahi para las comparaciones
# & este operador continúa evaluando las demás condiciones

# | este operador continúa evaluando las demás condiciones
# || basta con que una condición sea verdadera y deja de evaluar las siguientes condiciones

def evaluarCantidadBilletes(importe)

	# 200 soles
	monedaDoscientos = importe/200
	importe = importe%200
	puts '200 soles ' + monedaDoscientos.to_s

	
	monedasCien = importe/100
	importe = importe%100
	puts '100 soles ' + monedasCien.to_s


	# 50 soles
	
	monedasCincuenta = importe/50
	importe = importe%50
	puts '50 soles ' + monedasCincuenta.to_s

	# 20 soles
	monedasVeinte = importe/20
	importe = importe%20
	puts '20 soles ' + monedasVeinte.to_s

	# 10 soles
	monedasDiez = importe/10
	importe = importe%10
	puts '10 soles ' + monedasDiez.to_s

	# 5 soles
	monedasDiez = importe/5
	importe = importe%5
	puts '5 soles ' + monedasDiez.to_s

	# 1 sol
	puts '1 sol ' + importe.to_s
	


end
evaluarCantidadBilletes(273)

