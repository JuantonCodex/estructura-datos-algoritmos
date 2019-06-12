# Obtiene la lista de ventas aleatoriamente
def obtenerVentas(cantidadAlmacenes)
  ventas = []
  for i in 0..cantidadAlmacenes-1 do
    ventas[i] = rand(100)
  end
  return ventas
end

# Calcula media de ventas y valores superiores a la media
def calcularPromedio(listaVentas)
  sumatoria = 0
  for i in 0..listaVentas.size-1 do
    sumatoria = sumatoria + listaVentas[i]
  end

  # Calcula el promedio
  promedio = sumatoria * 1.0 / listaVentas.size

  return promedio
end

# Calcula la lista de valores que son mayores a la venta promedia
def ventasMayoresPromedio(listaVentas)
  promedio = calcularPromedio(listaVentas)
  resultado = []
  for i in 0..listaVentas.size-1 do
    if listaVentas[i] > promedio
      resultado.push(listaVentas[i])
    end
  end

  return resultado
end

cantidadAlmacenes = 2
listaVentas = obtenerVentas(cantidadAlmacenes)

print listaVentas
puts ''
print 'Ventas mayores al promedio: ', ventasMayoresPromedio(listaVentas)