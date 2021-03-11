#en ruby se utiliza tanto el metodo map como el collect, hacen lo mismo
array = [1,2,3]
#aqui le decimos que multiplique por dos los valores del indice del array
puts array.map{|i| i*2}
#aqui que lo convierta en string y concatene con el texto del string
puts array.map {|i| i.to_s + "Ok!"}
#BEST PRACTICE: aqui que lo convierta en string y concatene con el texto del string, ESTA ES LA FORMA CORRECTA EN RUBY
puts array.map {|i| "#{i}OK!"}

clase_new =["dani", "maria", "david"]
#esto nos devuelve el array con la primera letra en mayuscula de cada valor
clase_new.each {|alumno| puts alumno.capitalize}
#BEST PRACTICE: hace los mismo que el anterior, pero el metodo es map
puts clase_new.map {|alumno| alumno.capitalize}


puts clase_new.map! {|alumno| alumno.capitalize}
puts clase_new

clase_new =["dani", "maria", "david"]
#a es alumno, le estamos diciendo que ponga la primera en mayuscula si el valor es igual a david
puts clase_new.collect {|a| a.capitalize if a == 'david'}
#aqui le estamos diciendo que si se cumple la condicion de david haga el capitalize y si no, que lo devuelve tal cual está
#BEST PRACTICE: esta es la manera correcta de trabajar en RUBY
puts clase_new.collect {|a| a == 'david' ? a.capitalize : a}
#n es enumarador, le estamos diciendo que multiplique el rango por 2
puts (1..10).map {|n| n*2}