
puts "Hola".reverse

#para declarar un metodo unicamente hay que poner def
#aqui declaramos el metodo y para invocarlo, porque si no, no muestra nada, tenemos que escribirlo debajo
def hi
  puts "Hi World"
end

hi

def suma
  puts 1+2
end

#aqui le pedimos que compruebe cual es la palabra mas larga del array
def palabra_mas_larga
  palabra = ['manzana', 'cerezas', 'pera', 'sandia']
  larga = palabra.inject do |memo, n|
    memo.length > n.length ? memo : n
  end
  puts larga
end

suma
palabra_mas_larga

#aqui queremos saber si el valor es mayor que 10, este metodo desarrolla una pregunta
def mayor_10?
  value = 5
  puts value > 10 ? 'mayor que 10' : 'menor que 10'
end

mayor_10?

#aqui en primer lugar se muestra a que es una copia de b en mayuscula
#c es exactamente igual a 
b= "Hola"
a = b.upcase
c= b.upcase
puts a, b, c

puts "*************"
#aqui nos muestra b siempre en mayuscula, porque este band ! modifica la fuente del elemento original
b= "Hola"
a = b.upcase!
c= b.upcase
puts a, b, c