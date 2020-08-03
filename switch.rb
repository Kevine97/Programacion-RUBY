# switch, case
print"Ingrese la opcion: "
opcion = 1

case opcion
    when 1
        puts 'la opcion es 1'
    when 2
        puts 'la opcion es 2'

    when 3..5 # si la opcion esta en el rango
        puts 'la opcion es 3.4.5'
   
    when 'foo', 'bar' # podemos evaluar texto y varias cadenas en el mismo when
        puts 'la opcion es un texto'

    else
        puts 'opcion no valida'
end