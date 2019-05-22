def validarDigitos(numero)
  contPares = 0
  contImpares = 0

  while numero > 0
    digito = numero%10
    numero = numero/10

    # busca si es par o impar
    if digito%2 == 0
      contPares += 1
    else
      contImpares += 1
    end
  end

  return contPares, contImpares
end

puts validarDigitos(444355)
