# Calcula la lista de divisores de un número
def calcularDivisores(numero)
  listaDivisores = []
  divisor = 1
  while divisor <= numero
    if numero % divisor == 0
      listaDivisores.push(divisor)
    end  
    divisor = divisor + 1

  end
  return listaDivisores
end

def hallarSumaElementos(lista)
  sumatoria = 0
  # print lista
  # puts ''
  for i in 0..lista.size-2
    sumatoria = sumatoria + lista[i] 
  end
  return sumatoria
end

# Calcula los 4 primeros números perfectos
def hallarNumerosPerfectos()
  listaNumerosPerfectos = []
  contNumerosPerfectos = 0

  numero = 1
  while contNumerosPerfectos < 4
    divisores = calcularDivisores(numero)
    suma = hallarSumaElementos(divisores)
    # print 'numero: ', numero
    # puts ''
    # print 'suma: ', suma
    # puts ''
    # puts '--'
    if numero == suma
      listaNumerosPerfectos.push(numero)
      contNumerosPerfectos = contNumerosPerfectos + 1
    end
    numero = numero + 1
  end  
  # puts 'total:', contNumerosPerfectos

  return listaNumerosPerfectos
end
valorListaNumerosPerfectos = hallarNumerosPerfectos()
puts ''
print 'Resultado: ', valorListaNumerosPerfectos