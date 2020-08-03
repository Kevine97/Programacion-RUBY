# operaciones con cadenas

# interpolar codigo en cadenas
entero = 5

cadena = "Esto es una interpolacion #{entero}" # aqui se interpolo codigo ruby en una cadena de texto #{codigo ruby}

puts cadena

# otro ejemplo
# lo mismo pero con un bloque de codigo para apreciar mejor el ejemplo
cadena = "Esto es una interpolacion #{if false 
                                        "El valor es verdadero y concateno esto"
                                    else
                                        "El valor es falso y concateno esto"
                                    end}"

puts cadena

# formato de cadena 
# con las comillas dobles podemos analizar el texto antes de mostrarlo en pantalla
# de tal forma que valores como \t o \n son interpretados y representados en consola
# si se usan comillas simples el resultado no es el mismo

cadena = "\t\t esto es una tabulacion, \n y aqui un salto de linea \n otro mas"
puts cadena

# comunicandome con el sistema
# podemos usar esta comilla ` xxx ` para ejecutar comandos del sistema por ejemplo ejecuto el comando ipconfig
# el resultado de este comando es setiado en la variable command
#command = ` ipconfig ` 
#puts command

# multiplicando cadenas de caracteres
# dato curioso con ruby tenemos sobrecarga del simbolo de multiplicacion de tal forma que puedo multiplicar cadenas
# de textos

cadena = 'Hola! ' 
puts cadena * 2

# concatenando cadenas 
variable_numerica = 2.5
puts cadena + 2.to_s + "  " + variable_numerica.to_s

# longitud de una cadena 
cadena = "123456789"
puts cadena.length

# invertir cadenas
puts cadena.reverse