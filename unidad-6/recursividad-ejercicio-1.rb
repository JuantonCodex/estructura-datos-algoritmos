def calculoFactorial(numero)

  if numero == 0
    factorial = 1
  else
    factorial = numero * calculoFactorial(numero-1)
  end

  return numero
end

puts calculoFactorial(3)