def sumaDigito(numero)
  suma = 0
  while numero > 0
    digito = numero % 10
    numero = numero / 10
    suma = suma + digito

  end
  return suma
end

def calcularPromedio(numero)
  valorSuma = sumaDigito(numero)

  # Cantidad de digitos
  cantidadDigitos = 0
  while numero > 0
    numero = numero / 10
    cantidadDigitos = cantidadDigitos + 1
  end
  promedio = valorSuma * 1.0/cantidadDigitos
  return promedio
end
puts calcularPromedio(1234)