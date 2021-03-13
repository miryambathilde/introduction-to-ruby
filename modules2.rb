#tenemos que invocar el modulo y cargar el path
#el path se carga con una variable
$LOAD_PATH << '.'
require "Entrenamiento"

#ahora creamos la clase y le asignamos la constante alta
#cuando estemos utilizando modulos hay que usar la sintaxis con los ::

class Socio
    ALTA = true
    def entrenamiento
        puts "El entrenamiento empieza el #{Entrenamiento::DIA}"
        dias = 3 * Entrenamiento::fuerza
        puts "Esta rutina tendrá que seguirla durante #{dias} semanas"
    end
end

#vamos a crear una instancia de la clase socio, que se ha apuntado
carlos = Socio.new
carlos.entrenamiento