file = File.new('examen.txt', 'w')

file.puts "class Examen"
file.puts "def initialize"

file.puts "puts 'Escribe tu nombre: '"
file.puts "nombre = gets.chomp"
file.puts 'puts "Hola #{nombre}"'
file.puts "end" #aqui cierro el metodo initialize

file.puts "end" #aqui cierro la clase examen

file.puts "instancia = Examen.new" #aqui instanciamos el nuevo archivo
file.close #aqui cierro el archivo

#el metodo rename utiliza dos parametros: el nombre de nuestro archivo y el nuevo nombre
File.rename('examen.txt', 'examen.rb')