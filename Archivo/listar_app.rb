require_relative "./inicio.rb"
require_relative "./lista.rb"

class Listar_app
  def initialize
    @lista = Lista.new
  end

  def run
    puts "Bienvenido a nuestra lista de compra"
    loop do
      puts "a - Agregar un Registro"
      puts "v - Mostrar todos los Registros"
      puts "s - Salir"
      puts "__________________________________"
      print "Opcion: "
      inpust = gets.chomp
      case inpust
      when "a"
        print "Ingrese su nombre:  "
        item = gets.chomp
        print "Ingrese su apellido: "
        apellido = gets.chomp
        print "Ingrese su edad: "
        edad = gets.chomp
        print "Ingrese el sexo: "
        sexo = gets.chomp
        print "Ingrese la carrera: "
        carrera = gets.chomp
        items = @lista.Add_item(item, apellido, edad, sexo, carrera)

        puts items.text
      when "v"
        @lista.show_all
      when "s"
      else
      end
    end
  end
end

listar_app = Listar_app.new
listar_app.run()
