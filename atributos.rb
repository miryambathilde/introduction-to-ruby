#la construccion de la clase siempre tiene que ir finalizada con un end
#getter y setter 
class Alumno
     #setter
    def set_email(email)
        @email = email
    end
    #aqui le decimos que nos consiga el mail y no devuelva la variable global @email
    #getter
    def get_email
        @email
    end
    #attr_writer atributo nuevo con set 
    attr_writer :nombre
    #attr_reader atributo nuevo con get
    attr_reader :nombre
    #attr_accessor para el telefono
    attr_accessor :tlf
    #esto seria el equivalente al codigo attr_writer :nombre
    #def nombre (nom)
        #@nombre = nom
    #end
end


#aqui declaramos las instancias de esta clase
#rafa va a ser una copia del objeto alumno y new es para indicar que es un alumno que no existe, por lo tanto se creará
rafa = Alumno.new
#este es el email de la instancia rafa
rafa.set_email("rafa@gmail.com")
rafa.tlf = "645725789"
puts rafa.tlf
#y para recogerlo y que nos lo devuelva, el puts es para poder verlo en pantalla
puts rafa.get_email

pablo = Alumno.new
#pablo.nombre = ("Pablo Duran") esto seria con el metodo definido
pablo.nombre = "Pablo Duran"
puts pablo.nombre