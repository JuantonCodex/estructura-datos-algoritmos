# Si la compra es mayor o igual que 500, descuento del 10%
# si es menor, descuento del 5%
# afecta IGV 18%
# mostrar el importe total

def calculaDescuento(importe)
	if importe >= 500
		descuento = importe * 0.10
	else
		descuento = importe * 0.05
	end
	return descuento
end

def calculaImporteTotal(importe)
	descuento = calculaDescuento(importe)
	importeparcial = importe - descuento

	impuesto = importeparcial * 0.18

	totalPagar = importeparcial + impuesto
	return totalPagar
end

importe = 400
puts calculaDescuento(importe)
puts calculaImporteTotal(importe)