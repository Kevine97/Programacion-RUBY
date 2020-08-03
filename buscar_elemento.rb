# Buscando Elementos
# metodo find
puts "Metodo find"
puts (1..10).find { | i | i == 3 } # utilizando el metodo find buscaremos el numero 3

# metodo detect 
puts "Metodo detect"
puts (1..10).detect { | i | i == 3 } # similar al metodo find, detect busca el numero 3

# find all
puts "Metodo find all: multiplos de 2"
puts (1..10).find_all { | i | (i % 2) == 0 } # find_all retorna mas de un resultado en este caso multiplos de dos

# any? retorna true o false en caso de existir o no estar presente respectivamente
puts "Metodo Any?"
puts (1..10).any? { | i | i == 10 } # rango inclusivo 
puts (1...10).any? { | i | i == 10 } # rango exclusivo
