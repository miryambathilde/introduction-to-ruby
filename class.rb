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
end


#aqui declaramos las instancias de esta clase
#rafa va a ser una copia del objeto alumno
rafa = Alumno.new
#este es el email de la instancia rafa
rafa.set_email("rafa@gmail.com")
#y para recogerlo y que nos lo devuelva, el puts es para poder verlo en pantalla
puts rafa.get_email
