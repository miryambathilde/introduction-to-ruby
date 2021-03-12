#elementos de red: http, https, ftp
require "open-uri"

def conteo_paginas (url="http://pixelpro.es")
    #aqui le indicamos que nos abra la url y la lea
    page = open(url).read
end

def conteo_etiquetas (page, tag)
    #\b esto marca el final de la cadena y añadimos la variable tag #{tag
    pattern = /<#{tag}\b/  
    #aqui le que escanee en la pagina el pattern que hemos declarado, en este caso, imagenes 
    tags = page.scan(pattern)
    #aqui le decimos que nos muestres cuantas etiquetas encuentra en la url, añadimos la variable #{tag
    return tags.length
end

#creamos dos variables
sites = ["http://pixelpro.es","http://davidpique.com"]
tags = ["div", "h1", "h2", "article", "img"]

#aqui declaramos un bucle para recorrer el sites, y dentro declaramos el bucle tags, dentro del bucle sites para que recorra las etiquetas del sitio
#\t significa tabulado < es para concatenar
sites.each do |url|
    puts "#{url} contiene:"
    tags.each do |tag|
        page = conteo_paginas(url)
        tag_count = conteo_etiquetas(page, tag) 
        puts "\t - #{tag_count} <#{tag}> etiquetas"
    end
end