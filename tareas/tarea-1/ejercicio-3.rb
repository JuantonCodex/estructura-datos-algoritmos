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

# Calcula el máximo común divisor de dos números
def calcularMCD(numero_a, numero_b)
  divisores_a = calcularDivisores(numero_a)
  divisores_b = calcularDivisores(numero_b)
  puts '===='
  print divisores_a, ' ',divisores_b
  puts ''
  puts '===='

  # Recorre una de las lista de números
  mcd = 1
  for a in 0..divisores_a.size-1
    for b in 0..divisores_b.size-1
      if divisores_a[a] == divisores_b[b]
        mcd = divisores_a[a]
      end
    end
  end

  return mcd
  
end
valorMCD = calcularMCD(12,18)
print 'El MCD es: ', valorMCD


def calcularMCM(numero_a, numero_b)
  cont = 1
  multiplos_a = []
  multiplos_b = []
  
  # valor por defecto
  mcmEncontrado = false
  while mcmEncontrado == false
    multiplos_a.push(numero_a * cont)
    multiplos_b.push(numero_b * cont)

    for x in 0..multiplos_a.size-1
      for y in 0..multiplos_b.size-1
        if multiplos_a[x] == multiplos_b[y]
          mcmEncontrado = true
          valor_multiplo = multiplos_a[x]
        end
      end
    end
    cont = cont + 1
  end

  return valor_multiplo
end

multiploCalculado = calcularMCM(5,6)
puts ''
print 'El MCM es: ', multiploCalculado