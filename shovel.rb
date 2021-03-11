# el operador shovel << se utiliza para modificar un operador existente, para seguir trabajando con el mismo objeto
#de este modo modificamos el operador, si no, estaríamos eliminando un objeto y creando uno nuevo, lo que requiere mas carga de memoria con perdida de velociadad

hola = "Hello, "
mundo = "World!"

hi = hola

#al ser hi una copia de hola, tienen los dos el mismo identificador, porque es el mismo objeto
puts hi.object_id
puts hola.object_id

#en este caso hi, pasa a ser Hello, World!, porque << es un operador que nos hace una suma de elementos
#es una copia de hola al que hemos agregado mundo, por lo que estamos modificando el objeto original
#pero el object id sigue siendo el mismo, por lo que sigue siendo el mismo elemento, pero modificado
hi << mundo
puts hi
puts hi.object_id

puts "************"

#creamos otra variable y copy es una copia de original
original = "foo "
copy = original

#ESTO nos AYUDA EN LA VELOCIDAD DE CARGA Y OCUPA MENOS MEMORIA, porque lo que hacemos es modificar el elemento existente
#aqui le añadimos a copy un string, pero vemos que el id del objeto de copy y de original es el mismo
copy << "bar"
puts copy
puts copy.object_id
puts original.object_id

#ESTO NO ES LO MEJOR PORQUE LO QUE HACE ES RALENTIZAR EL SISTEMA DE CARGA porque estamos eliminando y creando un nuevo elemento
copy = original
# += es un operador de concatenacion
#aqui tenemos el mismo elemento pero con un bar más y el id cambia
copy += " bar"
puts copy
puts copy.object_id