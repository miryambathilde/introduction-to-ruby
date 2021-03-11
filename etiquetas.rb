#elementos de red: http, https, ftp
require "open-uri"

#aqui le indicamos la url que queremos que analice
url = "http://www.pixelpro.es"
#aqui le indicamos que queremos saber cuantas imagenes contiene un sitio web, no cerramos la etiqueta por si tiene atributos
pattern = "<img"
#aqui le indicamos que nos abra la url y la lea
page = open(url).read
#aqui le que escanee en la pagina el pattern que hemos declarado, en este caso, imagenes 
tags = page.scan(pattern)

#aqui le decimos que nos muestres cuantas etiquetas encuentra en la url
puts "El sitio #{url} tiene #{tags.length} etiquetas img"