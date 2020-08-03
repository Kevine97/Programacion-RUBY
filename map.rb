# Metodo Map 
=begin
    El metodo map puede modificar el estado 
    de la lista original o realizar un proceso
=end
array = [1,2,3,4,5,6]
puts "usando map"
puts array.map { | i |  i * 2 }
puts "mostrando original"
puts array

# Metodos Bang
puts "usando map"
puts array.map! { | i |  i * 2 }
puts "mostrando original"
puts array

array = [1,2,3,4,5,6]
puts "Map agregando String"
puts array.map { | i |  "Es este tu arreglo: #{i}" }


# Collect
puts "Collect agregando String"
puts array.collect { | i |  "Es este tu arreglo: #{i}" }

puts "Capitalize"
array = ["pato", "perro", "gallina", "loro"]
puts array.map { | i |  i.capitalize }
puts "***************"
puts array.map { | i |  i.capitalize if i == "perro" }
puts "***************"
puts array.map { | i |  i == "perro" ? i.capitalize : i }

=begin
Kevin
esquivel rojas

=end