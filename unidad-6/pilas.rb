def pilaVacia

end

def apilar
  while $tope > -1
    $tope = $tope -1
  end
  return valor
end

def accesar
  if $tope > -1
    valor = $pila[$tope]
  end
  return valor
end

def recorreArreglo
  temp = []
  if $tope > -1
    for i in 0..$tope
      temp.push($pila[i])
    end
  end

end

$tamano = 5
$pila = []
pilaVacia
apilar(10)
apilar(20)
apilar(30)
print recorreArreglo
desapilar
puts
print recorreArreglo