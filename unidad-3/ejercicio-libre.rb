# Al tirar un dado n veces, se debe mostrar las veces que sale los valores 1,2,3,4,5 y 6
# y cuál es el número que sale más veces

def contarRepeticiones(numeroLanzamientos)
  contador = [0,0,0,0,0,0]

  for i in 1..numeroLanzamientos do
    numeroAleatorio = rand(6) + 1
    print 'numero aleatorio: ', numeroAleatorio
    puts ''
    indice = numeroAleatorio - 1
    contador[indice] = contador[indice] + 1
  end
  print contadors
  puts ''
  return contador
end

def hallarMasFrecuente(listaRepeticiones)

  # Calcular la mayor cantidad de veces que se repite
  mayor = 0
  for i in 0..listaRepeticiones.size-1 do
    if listaRepeticiones[i] > mayor
      mayor = listaRepeticiones[i]
    end
  end

  # Busca si hay más de un número que se repite
  numerosMasFrecuentes = []
  for i in 0..listaRepeticiones.size-1 do
    if listaRepeticiones[i] == mayor
       numerosMasFrecuentes.push(i+1)
    end
  end
  return numerosMasFrecuentes
end

repeticiones = contarRepeticiones(5)
masFrecuente = hallarMasFrecuente(repeticiones)
puts '------------------'
puts 'Más frecuente: ', masFrecuente

