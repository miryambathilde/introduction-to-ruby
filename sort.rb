# <=> ESTE SIMBOLO es un comparador que nos va a devolver un valor entre 3 valores:-1 si el primer operador es menor, 0 si son iguales, 1 si es mayor, es decir es una comparación a 3.

puts 1 <=> 2
puts 3 <=> 2
puts 1 <=> 1

array = [2,78,32,326,21,75]
#esto nos muestra el array tal cual, desordenado
puts array

#para que nos lo ordene de manera ascendente, utilizamos el metodo sort
puts array.sort

#con esto nos lo muestra ordenado de manera ascedente y separados por coma en un array lineal
puts array.sort.join(', ')
#con esto nos lo muestra ordenado de manera DESCEDENTE con el reverse y separados por coma en un array lineal
puts array.sort.reverse.join(', ')

alumnos = ['Miryam', 'Sergio', 'Oliver']
#nos lo muestra ordenado tal cual
puts alumnos.sort

alumnos = ['miryam', 'Sergio', 'Oliver']
#nos lo muestra ordenado dejando el que esta sin capitalizar como último valor
puts alumnos.sort

#vamos a ordenarlos por tamaño
alumnos = ['miryam', 'Sergio', 'Oliver'].sort_by do |x| x.capitalize end
#aqui lo que estamos haciendo es un reverse, puesto que primero muestra el al2 y luego el al1
puts alumnos.sort {|al1, al2| al2 <=> al1}

#aqui le decimos que coja la variable alumno y la ordene por el tamaño, los string en mayuscula tienen mayor tamaño que el de minusculas
puts alumnos.sort_by {|a| a.length}

#si queremos que aqui el criterio sea el mismo lo pondremos así
puts alumnos.sort {|al1, al2| al1.length <=> al2.length}
