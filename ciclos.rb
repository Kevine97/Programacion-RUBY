#cilos

# ciclo de 1 a 5
1.upto(5) do | var |
    # imprime a pantalla
    puts "iteracion #{var}"
    
end

# declaro un arreglo para iterar sobre el
animals = ['gato','perro','leon']

# ciclo each
# la variable animal tomara el valor de cada item en cada iteracion
animals.each do | animal |
    puts animal 
end

# ciclo for de 1 a 100  
for x in 1..100
    puts x
end

#ciclo while (infinito por que no tiene condicion de cierre)
#while true  do
#   puts "estas en un ciclo infinito" 
#end
