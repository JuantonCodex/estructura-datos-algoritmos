def almacenarValores(n)
  val = 1
  index = 1
  array=[]

  for i in 0..n-1
    if index%4==0
      array[i] = val*(-1)
      val = val+1
      index = index+1
    else
      array[i] = val
      val = val+1
      index = index+1
    end
  end

  return array
end
print almacenarValores(15)