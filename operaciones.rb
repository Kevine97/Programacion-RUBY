# operaciones basicas

# suma 

operando_uno = 1
operando_dos = 1

# el metodo puts es para imprimir en consola
# tambien podria invocar al metodo "p" que hace lo mismo
puts"S U M A\n"
puts "Suma 1: #{operando_uno + operando_dos}"

puts "Suma 2: #{operando_uno + 123}"

# resta
puts"\n\nR E S T A\n"
operando_uno = 30
operando_dos = 45

puts "Resta 1: #{operando_uno - operando_dos}"

puts "Resta 2: #{operando_uno - 45}"

# MULTIPLICACION
puts "\n\nM U L T I P L I C A C I O N\n"

operando_uno = 1
operando_dos = 1

mult= operando_uno * operando_dos

puts "Multiplicacion #{mult}"

# DIVISION

puts"\n\nD I V I S I O N\n"
operando_uno = 2
operando_dos = 2
resultado =  operando_uno / operando_dos 
puts "Division 1:  #{resultado}"

operando_uno = 2
operando_dos = 3
resultado =  operando_uno / operando_dos.to_f
puts"Division 2: #{ resultado}"

# RESIDUO
puts"\n\nR E S I D U O\n"
puts "Resultado: #{5 % 6}"