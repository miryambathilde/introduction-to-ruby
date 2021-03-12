#elementos de red: http, https, ftp
require "open-uri"

def etiquetas (url, tag)
    #\b esto marca el final de la cadena y añadimos la variable tag #{tag
    pattern = /<#{tag}\b/
    #aqui le indicamos que nos abra la url y la lea
    page = open(url).read
    #aqui le que escanee en la pagina el pattern que hemos declarado, en este caso, imagenes 
    tags = page.scan(pattern)
    #aqui le decimos que nos muestres cuantas etiquetas encuentra en la url, añadimos la variable #{tag
    puts "El sitio #{url} tiene #{tags.length} etiquetas div #{tag}"
end

#aqui invocamos el metodo
etiquetas("http://pixelpro.es", "img") #aqui buscaremos img 
etiquetas("http://davidpique.com", "div") #aqui buscaremos los div