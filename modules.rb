#para declarar un modulo usamos la palabra reservada module
#cuando estemos utilizando modulos hay que usar la sintaxis con los ::

module Entrenamiento
    DIA = "Lunes"
    def Entrenamiento.fuerza
        puts "Rutina de 4 semanas"
        4
    end
    def Entrenamiento.trimestre
        puts "El entrenamiento dura 12 semanas"
    end
end
#con esto ya tenemos terminada la declaracion del modulo que contienen 2 métodos

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