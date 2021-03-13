#para crear un nuevo archivo tenemos que pasar dos argumentos, el primero el nombre del archivo y el segundo los permisos
#en este caso el permiso es w de write para que nos permite escribir en el archivo
my_file = File.new('ejemplo.txt', 'w')
#en consola no nos devuelve nada pero si vamos a la carpeta podremos ver que está el archivo que hemos creado

#con esto estamos escribiendo lo que ponemos aqui en nuestro archivo
#metodos para escribir contenido en nuestro archivo
my_file.puts "Hola Miryam"

my_file.print "que tengas un buen día\n"

my_file.write "Es muy fácil aprender Ruby\n"
#este es el metodo append
my_file << "Tienes toda la razón"

#para cerrar el archivo y que no se pueda modificar de manera accidental tenemos que:
my_file.close