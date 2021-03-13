class Examen
    def initialize
    puts 'Escribe tu nombre: '
    nombre = gets.chomp
    puts "Hola #{nombre}"
    end
end
instancia = Examen.new
