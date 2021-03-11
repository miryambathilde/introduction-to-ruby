$x = "local"
def x
  x = "Hola Mundo"
  puts x
end 
x
puts $x

alumno_1 = 'Miryam'
alumno_2 = 'Sergio'
#\n esto es para pasar al siguiente reglon
def deportes (a, b)
  f = "Futbol"
  p = "Padel"
  "#{a}, practica #{f}\n#{b}, practica #{p}"
end

#CUANDO INVOCAMOS AL METODO el alumno_1 pasa a ser en el metodo el a y el alumno_2 el b 
#y así le damos los argumentos para que trabajen con las variables

#aqui le damos los argumentos para que pueda trabajar el método correctamente
puts "#{deportes(alumno_1, alumno_2)}" 


def suma (a, b)
  puts a + b
end

#estos son los argumentos
suma 4,6
suma 10, 345

def resta (a, b)
  puts a - b
end

#estos son los argumentos
resta 15, 10
resta 345, 300

puts "*****************"

#aqui declaramos los valores de los argumentos ya directamente
def suma (a=0, b=10)
  puts a + b
end

suma

puts "*****************"

x = "piano"
y = "guitarra"

def foo(a, b)
  x= "Pepe"
  #aqui le indicamos que queremos que nos devuelva esta expresión
  "#{a}, lo toca #{x}, mientras #{b} lo mira"
end

a = 'Ernesto'
#al ser x, pepe, una variable local dentro del metodo, b es el segundo argumento que en este caso en el puts es a
puts "#{foo(x, a)}"