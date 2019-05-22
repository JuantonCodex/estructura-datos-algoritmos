# Cuando no sabemos cuántas veces se va a repetir algo se usa WHILE
# cuando se sabe cuántas veces se va a repetir algo, se puede usar el WHILE y el FOR
numero = 1
suma = 0
while numero <= 5
  puts numero
  suma = suma + numero
  numero = numero + 1
end
puts 'resultado de while: ' + suma.to_s

n = 5
for j in 1..n
  for i in 1..n do
    print i.to_s + ' '
  end
  puts
end
puts '----------------'
for j in 1..n
  for i in j..n
    print i.to_s + ' '
  end
  puts
end

