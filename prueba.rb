class Persona
  attr_accessor :nombre
  attr_accessor :apellido

  def initialize(nombre, apellido)
    @nombre = nombre
    @apellido = apellido
  end

  def get_print
    "Nombre: #{@nombre}\nApellido: #{apellido}"
  end
end

menu = 1
cont = 0
@array_pelicula = Array.new
while menu.to_i != 3
  puts "1. Agregar"
  puts "2. Mostrar"
  puts "3. Salir"
  opc = gets.chomp

  case opc.to_i
  when 1
    puts "Nombre"
    nombre = gets.chomp
    puts "apellido"
    apellido = gets.chomp

    p = Persona.new(nombre, apellido)

    cont = cont + 1
    @array_pelicula.push(p)
  when 2
    @array_pelicula.each_index do |index|
      print @array_pelicula[index].get_print
      print "\n"
    end
  when 3
    break
  end
end
