#la construccion de la clase siempre tiene que ir finalizada con un end
#getter y setter 

#IMPLEMENTAMOS METODO INITIALIZE
class Alumno
    attr_accessor :tlf, :apellido
    attr_reader :curso_matriculado

    #IMPLEMENTAMOS METODO INITIALIZE: siempre es PRIVADO
    def initialize (curso = "No definido", email, nombre)
        @curso_matriculado = curso
        @email = email
        @nombre = nombre
    end
    #desde aqui podemos acceder a las variable del metodo privado iniciatialize
    attr_reader :email, :nombre
end


#aqui declaramos las instancias de esta clase

#cuando creamos una instancia con el metodo INICIATIZE 
rafa = Alumno.new("Ruby", "rafa@gmail.com", "Rafael")

rafa.tlf = "645725789"
puts rafa.tlf
rafa.apellido = "Pérez"
puts rafa.apellido
puts rafa.curso_matriculado
puts rafa.email

#cuando creamos una instancia con el metodo INICIATIZE 
pablo = Alumno.new("Python", "pablo@gmail.com","Pablo")

puts pablo.nombre
puts pablo.curso_matriculado
puts pablo.email