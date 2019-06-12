# Calcula el porcentaje a usar dependiendo de qué número de mes sea
def calcularPorcentajeInteres(numeroMes)
  porcentaje = 0.01
  contador = 1
  anho = numeroMes * 1.0 / 12


  # Determina si la cantidad de meses amerita un incremento
  # en el porcentaje de interes
  if anho % 3 == 0
    porcentaje = porcentaje + 0.005
  end

  return porcentaje
end

# Calcula el importate total (incluye intereses)
def calcularImporteTotal(_montoInicial, _tiempo)

  # Conviente la cantidad de años en meses
  totalMeses = _tiempo * 12

  # Contadores
  contadorAnhos = 1
  numeroDeMes = 1

  # Monto acumulado, incluye inversión sumado al interés ganado mes a mes
  montoAcumulado = _montoInicial

  while numeroDeMes <= totalMeses

    porcentaje = calcularPorcentajeInteres(numeroDeMes)

    # Intereses ganado
    interesGanado = montoAcumulado * porcentaje

    # Incrementa el monto acumulado
    montoAcumulado = montoAcumulado + interesGanado

    # Incrementa el número de mes
    numeroDeMes += 1
  end
  # Retorna lo siguiente:
  # Porcentaje de interés del último mes
  # Importe del interés ganado del último mes
  # Importe total ganado en todo el período
  return porcentaje, interesGanado, montoAcumulado
end

numeroMeses = 3
montoInversion = 10000
puts calcularImporteTotal(montoInversion, numeroMeses)