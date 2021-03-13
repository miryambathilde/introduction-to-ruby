#si yo quiero mostrar la carpeta en la que me encuentro
#esto nos muestra el nombre del archivo donde estoy
puts __FILE__
#esto nos muestra la ruta donde se encuentra el archivo
# este metodo expand_path convierte la ruta relativa en absoluta
puts File.expand_path(__FILE__)
#esto nos devuelve el nombre de la carpeta donde se encuentra nuestro archivo
puts File.dirname(__FILE__)
#con esto nos devuelve una ruta con los argumentos que le estoy pasando
puts File.join("Miryam", "Descargas")

#podemos instanciar elementos de la clase file de esta forma, me devuelve la ruta en la que me encuentro, que se muestra con un .
my_dir_name = File.dirname(__FILE__)
puts my_dir_name
#aqui nos muestra la ruta absoluta de nuestro archivo
my_dir_name = File.absolute_path(__FILE__)
puts my_dir_name

#para saber si existe un directorio podemos formular preguntas y devuelve true o false
puts File.directory?("C:/Users/Equipo/Desktop/HTML Y CODIGO WEB/RUBY/")