def generarCodigo(numero, digito)
  codigo = numero * 10 + digito
  return codigo
end

numeroInicial = 13578
digito = 6
puts 'Número inicial: ' + numeroInicial.to_s
puts 'Código generado: ' + generarCodigo(numeroInicial, digito).to_s