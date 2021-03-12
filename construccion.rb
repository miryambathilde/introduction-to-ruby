#elementos de red: http, https, ftp
require "open-uri"

def etiquetas (url)
    #aqui le indicamos que queremos saber cuantas imagenes contiene un sitio web, no cerramos la etiqueta por si tiene atributos
    pattern = "<div"
    #aqui le indicamos que nos abra la url y la lea
    page = open(url).read
    #aqui le que escanee en la pagina el pattern que hemos declarado, en este caso, imagenes 
    tags = page.scan(pattern)
    #aqui le decimos que nos muestres cuantas etiquetas encuentra en la url
    puts "El sitio #{url} tiene #{tags.length} etiquetas div"
end

#aqui invocamos el metodo
etiquetas("http://pixelpro.es")
etiquetas("http://davidpique.com")