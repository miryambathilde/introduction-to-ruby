#La secuencia de Fibonacci es una secuencia de números enteros en la que cada número es la suma de los dos anteriores en la secuencia

ar = [0,1]

#le estamos diciendo que a ar le añada la suma del index 0 y el 1, lo que da 1
1.times do 
    ar << ar[0] + ar[1]
end
puts ar

puts "***********"

#vamos a hacer que se muestre los 20 primeros numeros 

ar = [0,1]

20.times do 
    ar << ar[0] + ar[1]
end
puts ar

puts "***********"

#el 0 seria el -1 y el 1 seria el -2, con esto lo que hacemos es contar desde el final
#como empezamos desde -2 y queremos los primeros 20 valores, indicamos 18 times
ar = [0,1]

18.times do 
    ar << ar[-2] + ar[-1]
end
puts ar

puts "*************"

#esto nos dara el mismo resultado usando el metodo inject y join para que se muestre separado por comas
ar = 18.times.inject([0,1]) do |memo, i|
    memo << memo[-2] + memo [-1]
end

puts ar.join(', ')