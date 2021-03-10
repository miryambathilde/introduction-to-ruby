
#puts__FILE__
#constante global SIEMPRE EMPIEZA CON $
$MY_FILE = File.expand_path(File.dirname(__FILE__)) #nos devuelve la ruta de nuestros archivos

puts $MY_FILE #mos devuelve el nombre del archivo

puts $0
puts $: #esta variable nos busca todos los archivos de la libreria de RUBY, asi obtenemos los directorios donde Ruby va a buscar archivos
puts $$ #nos permite identificar el proceso donde está ejecutando ruby, nos va a dar un numero de proceso
puts 'Es el mismo' if __FILE__ == $0

array = [1,2,3]
array.each {|i| puts i*2} # dentro de las {} está la variable definida por lo que nos da 2,4,6
puts i #aqui nos dice que no está definida 
