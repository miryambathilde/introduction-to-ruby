x = 0
y = 2

#con esto como la x pasa al valor 2 solo hace dos bucles, si no sería infinto

while x < y do
    puts "Hola Ruby"
    x += 1
end

#esta iteración hace que el bucle se repita 100 veces
x = 0

for x in 1..100 do
    puts "Hola, esta es la iteración #{x}"
end

#ahora solo queremos los indices que sean dividibles entre 5

i= 0

for i in 1..100 do
    puts i if i % 5 == 0
end