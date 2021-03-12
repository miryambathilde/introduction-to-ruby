#Las variables de clase están marcadas siempre con dos @@
class Alumno
    @@maria = "Dado de alta por Maria"
    @@alumnos_alta = []

    attr_accessor :tlf, :apellido

    #IMPLEMENTAMOS METODO INITIALIZE: siempre es PRIVADO
    def initialize (curso = "No definido", email, nombre)
        @curso_matriculado = curso
        @email = email
        @nombre = nombre
        #con esto lo que le decimos es que la var alumnos_alta incluya el self, para que almacene la infomracion en el array
        @@alumnos_alta << self
    end
    #desde aqui podemos acceder a las variable del metodo privado iniciatialize
    attr_reader :email, :nombre, :curso_matriculado
    #aqui definimos el metodo para el array de la var alumnos_alta
    def self.alumnos_alta
        @@alumnos_alta
    end
     #creamos un metodo con la palabra reservada SELF que nos va a devolver la variable @@maria
    def self.alta
        @@maria
    end

    def author
        Alumno.alta
    end
end

puts "***************************"
#aqui declaramos las instancias de esta clase
#cuando creamos una instancia con el metodo INICIATIZE 
rafa = Alumno.new("Ruby", "rafa@gmail.com", "Rafael")

rafa.tlf = "645725789"
puts rafa.tlf
rafa.apellido = "Pérez"
puts rafa.apellido
puts rafa.curso_matriculado
puts rafa.email
puts rafa.author

puts "***************************"
#cuando creamos una instancia con el metodo INICIATIZE 
pablo = Alumno.new("Python", "pablo@gmail.com","Pablo")

puts pablo.nombre
puts pablo.curso_matriculado
puts pablo.email
puts pablo.author

puts Alumno.alta

puts "***************************"
#esto nos devuelve un array con todos los elementos que contienen nuestros objectos instancia que hemos creado en cada uno de estos NEW
puts Alumno.alumnos_alta.inspect