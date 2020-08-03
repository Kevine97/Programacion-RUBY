=begin 
    este ejemplo muestra como definir modulos en ruby 
    el modulo es un espacio de nombre donde podemos definir funciones y constantes
=end

# definicion del modulo se hace con la palabra reservada "module" seguido con el nombre del modulo empezando con mayusculas "Ejemplo" 
module Ejemplo # inicia modulo

    PI = 3.1416 # declaracion de constantes

    # definicion de metodos 
    def Ejemplo.suma(valor1, valor2) # inicio del metodo
        valor1 + valor2
    end # fin del metodo

    def Ejemplo.valor_pi # inicio del metodo 
        puts "El valor de PI es: #{PI}"
    end # fin del metodo

end

# inicia declaracion de la clase
class MiClase

    # definicion de constructor
    def initialize
    
    end

    # definicion de metodos
    def mostrando_pi
        # uso del modulo 
        Ejemplo::valor_pi # para acceder a un metodo en el modulo se hace como el nombre del modulo despues :: y el nombre del metodo
    end

end # fin de la clase

# declarando instancia de MiClase
instancia = MiClase.new
# invocando metodo que hace uso del modulo
instancia.mostrando_pi

#invocando constante directamente del modulo
puts Ejemplo::PI

