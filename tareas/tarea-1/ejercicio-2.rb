# Calcula los dividores de un número
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
divisores = calcularDivisores(45)
print 'Divisores: ', divisores