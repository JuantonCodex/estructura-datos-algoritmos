def llenarArreglo(arreglo, n)
  for i in 0..n-1
    # arreglo[i] = (rand()*30).round(0)
    arreglo[i] = rand(30)
  end
  return arreglo
end

def hallarMayor(arreglo)
  indMax = arreglo.size-1
  mayor = arreglo[0]
  pos = 0
  for i in 0..indMax do
    if arreglo[i] > mayor
      mayor = arreglo[i]
      pos = i
    end
  end
  return pos, mayor
end

def hallarMenor(arreglo)
  indMax = arreglo.size-1
  menor = arreglo[0]
  pos = 0
  for i in 0..indMax do
    if arreglo[i] < menor
      menor = arreglo[i]
      pos = i
    end
  end
  return pos, menor
end

def sumaArreglo(arreglo)
  suma = 0
  for i in 0..arreglo.size-1 do
    suma = suma + arreglo[i]
  end
  return suma
end

def promedio(arreglo)
  suma = sumaArreglo(arreglo)
  prom = suma * 1.0 / arreglo.size
  return prom
end

arreglo = llenarArreglo([], 5)
print arreglo
puts ''

puts '==================='
mayor = hallarMayor(arreglo)
puts 'Mayor valor: ' + mayor[1].to_s
puts 'Posición: ' + mayor[0].to_s

puts '==================='
menor = hallarMenor(arreglo)
puts 'Menor valor: ' + menor[1].to_s
puts 'Posición: ' + menor[0].to_s

puts '==================='
print 'Suma de valores: ', sumaArreglo(arreglo)

puts ''
puts '==================='
print 'Promedio: ', promedio(arreglo)