def calculcarFactorial(numero)
  acumulador = 1
  for i in 1..numero
    acumulador = acumulador * i
  end
  return acumulador
end

def calcularPotencia(x, exponente)
  resultado = x**exponente
  return resultado
end

def sumarSerie(x,n)
  suma = 0
  for i in 0..n
    suma = suma + (calcularPotencia(x,i) * 1.0 / calculcarFactorial(i))
  end
  return suma.round(3)
end

# puts calcularPotencia(2,3)
# puts calculcarFactorial(2)
puts sumarSerie(2,5)
