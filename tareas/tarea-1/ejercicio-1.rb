# Calcula el divisor según la cantidad de dígitos
def calcularDivisor(numero)
  cantidad = 0
  while numero > 0
    numero = numero / 10
    cantidad = cantidad + 1
  end  

  # Calcular el divisor
  divisor = 1
  for i in 0..cantidad-1 do
    divisor = divisor * 10
  end
  return divisor/10
end

def obtenerPosicion(numero, digito)
  divisor = calcularDivisor(numero)

  # Lista donde se guarda las posiciones
  posiciones = []

  # Posicion inicial
  contador = 0

  # Divide sucesivamente al numero para obtener el dígito de la izquierda
  while numero > 0
    primerDigito = numero / divisor
    numero = numero % divisor
    divisor = calcularDivisor(numero)

    # Este valor indicará la posición
    contador = contador + 1

    # print primerDigito, ' - ', numero , ' - ', divisor
    # puts ''
    # puts '==========='
    if primerDigito == digito
      posiciones.push(contador)
    end
    
  end

  return posiciones
  
end
posiciones = obtenerPosicion(12345,1)
print 'Posiciones encontradas: ', posiciones