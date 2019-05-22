def evaluarUnidad(numero)
  unidad = numero%10
  if unidad%2 == 0
    numero = numero / 10
  else
    numero = numero - 10
  end
  return numero
end
puts evaluarUnidad(1234)
puts evaluarUnidad(1235)