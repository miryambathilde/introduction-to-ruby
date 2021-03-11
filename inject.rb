# Con este método lo que conseguimos es que nuestros elementos funcionen como un acumulador
#memo se utiliza por convencion, es memoria

#esto muestra 55
puts (1..10).inject {|memo, i| memo + i}

#esto nos muestra el array del 1 al 10
array = [*1..10]
puts array

#esto muestra 55
sum = array.inject {|memo, i| memo + i}
puts sum

#aqui le estamos pasando un a inject un valor inicial de 100, es decir empezara a contar desde 100, por lo que muestra 155
sum2 = array.inject(100){|memo, i| memo + i}
puts sum2
#aqui le estamos pasando un a inject un valor inicial de 100, es decir empezara a contar desde 100, pero multiplicamos
sum2 = array.inject(100){|memo, i| memo * i}
puts sum2

names = ['miryam', 'sergio']

#aqui le estamos diciendo que si memo es mayor que i muestre memo, si no, muestra i
longest = names.inject do |memo, i|
    if memo.length > i.length
        memo
    else 
        i   
    end
end

puts longest

#ejemplo para pagina web
menu = ['home', 'about us', 'products', 'services']

#aqui le estamos diciendo que el valor inicial es de 10, para los caracteres, para que nos muestre el resultado de cuantos caracteres tiene nuestro menu
menu_length = menu.inject(10) {|memo, i| memo + i.length}
puts menu_length
