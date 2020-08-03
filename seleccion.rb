
# Estas son estructuras de seleccion

# if - if else
# se dispara cuando la expresion es verdadera

variable  = 3 # declaro variable adigno 5

if variable < 5  # evaluo en un if
    puts "El numero es menor a 5"
    puts "Hola!"
else # el respectivo else
    puts "El numero es mayor a 0"
    puts "Hola!" 
end # fin del if
    
# unless
# se dispara cuando la expresion es falsa contrario al if que se ejecuta al ser true
unless variable < 5 
    puts "El numero es menor a 5"
    puts "Hola!"
else
    puts "El numero es mayor a 0"
    puts "Hola!" 
end


# ternario

var = variable > 5 ? 4 : variable
var = 2 if variable < 5 
var = 2 unless variable < 5 