
#la variable no tiene porque estar definida, aqui le indicamos que repita el texto hasta 5 veces
#x es el numero del indice 
1.upto(5) do |x|
  puts "Hola Ruby" + x.to_s
end

animals = ["perro", "gato", "leon"]

#vamos a usar la funcion each para recorrer el array

animals.each do |i|
  puts i   
  break if i == "gato" #el bucle para cuando el indice i llegue al indice gato del array
end