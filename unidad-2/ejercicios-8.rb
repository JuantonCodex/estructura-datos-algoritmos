def sumatoria(numero)
  suma = 0
  signo = -1

  for i in 1..numero
    signo = signo * -1
    suma = suma + (1.0/i) * signo
  end
  return suma.round(4)
end

puts sumatoria(1)
puts sumatoria(2)
puts sumatoria(3)
puts sumatoria(4)
puts sumatoria(5)
