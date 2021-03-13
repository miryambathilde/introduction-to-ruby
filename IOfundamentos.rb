#el metodo chomp lo que hace es que nos quita el último caracter especial, en este caso el salto de linea
input = ""
until input == "exit"
    print "C:> "
    input = gets.chomp
    puts "Quieres decir \"#{input}\"\?"
end

puts "Hasta luego!"
