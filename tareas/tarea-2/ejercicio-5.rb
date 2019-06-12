# menores de 30
def llenarArreglo(arreglo, n)
  for i in 0..n-1
    arreglo[i] = rand(30)
  end
  return arreglo
end


def hallarPromedio(arreglo)
  sumatoria = 0
  for i in 0..arreglo.size-1
    sumatoria = sumatoria + arreglo[i]
  end
  return sumatoria * 1.0 / arreglo.size
end

def hallarSubLista(arreglo)
  sublista = []

  # Compara cada elemento con el promedio
  promedio = hallarPromedio(arreglo)
  for i in 0..arreglo.size-1
    if arreglo[i] > promedio
      sublista.push(arreglo[i])
    end
  end

  return sublista
end

arreglo = llenarArreglo([], 5)
puts hallarSubLista(arreglo)