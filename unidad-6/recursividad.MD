# Un módulo que se llama a sí mismo

def suma(n)

  if n > 2
    suma(n)
  else
    solucion = 10
  end
  return solucion
end