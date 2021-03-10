hash1 = {'David' => 9, 'Dani' => 10}
puts hash1

hash2 = {'Maria' => 9, 'Dani' => 9}

#este método nos permite combinar elementos de los dos hash
#aqui prevalece el hash2 al hacerle el merge al hash1
puts simple_merge = hash1.merge(hash2)
#aqui prevalece el hash1 al hacerle el merge al hash2
puts revert_merge = hash2.merge(hash1)

#k = key, o= old, n=new, i = indice
#aqui le estamos indicando que nos mantenga el valor anterior, cambiamos el comportamiento de la función merge
puts total_hash = hash1.merge(hash2) {|k, o, n| o}
#aqui le estamos indicando que nos mantenga el valor nuevo, la funcion merge actúa por defecto 
puts total_hash = hash1.merge(hash2) {|k, o, n| n}

#aqui tenemos dos maneras de hacer if else
puts "if_hash #{if_hash = hash1.merge(hash2) do |k, o, n|
if o < n
    n
else 
    o
end
end
}"
#esto da el mismo resultado siendo mucho más corto el código
puts "ruby_hash #{hash1.merge(hash2) {|k, o, n| o > n ? o : n}}"