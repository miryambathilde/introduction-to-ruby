#si tenemos una variable y un metodo con el mismo nombre, el metodo no se va a mostrar
#aunque la variable local sea declarada de manera global, la variable global que hay declarada dentro del método la modifica, prevalece
$x = "local"
def x
  $x = "Hola Mundo"
  puts $x
end 
x

puts "*******"
#aqui prevalece la variable global definida (local)
$x = "local"
def x
  x = "Hola Mundo"
  puts $x
end 
x

puts "*******"
#aqui creamos una variable local dentro del metodo
$x = "local"
def x
  x = "Hola Mundo"
  puts x
end 
x

puts "*******"
#aqui creamos una variable local dentro del metodo
#se mostrara primero la variable del metodo y luego la variable global
$x = "local"
def x
  x = "Hola Mundo"
  puts x
end 
x
puts $x

puts "*******"

alumno_1 = 'Miryam'
alumno_2 = 'Sergio'
#\n esto es para pasar al siguiente reglon
def deportes (a, b)
  f = "Futbol"
  p = "Padel"
  "#{a}, practica #{f}\n#{b}, practica #{p}"
end

puts "#{deportes(alumno_1, alumno_2)}"