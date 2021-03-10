#para que encuentre del 1 al 10 el elemento que es igual que 3, por lo que devuelve 3
(1..10).find {|i| i == 3} 
#que encuentre los elementos que sean divisbles entre 2 y que el resto sea 0, devuelve 2
(1..10).find {|i| i % 2 ==0} 
#podemos usar find o detect, devuelve 2
(1..10).detect {|i| i % 2 ==0} 
#podemos usar find_all para que devuelve todos los elmentos que cumplan esa condicion, nos devuelve [2,4,6,8,10], porque son todos los valores divisibles entre 2
(1..10).find_all {|i| i % 2 ==0} 
#aqui estamos preguntando si hay algun elemento divisible entre 2 que el resto sea 0, nos devuelve el boolean TRUE
(1..10).any? {|i| i % 2 ==0}
#aqui estamos preguntando si todos los elementos del rango son divisibles entre 2, devuelve FALSE 
(1..10).all? {|i| i % 2 ==0}