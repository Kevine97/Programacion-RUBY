require_relative "./item.rb"
require_relative "./list.rb"

class List_App
  attr_writer :list

  def initialize
    @list = List.new
  end

  def run
    puts "Bienvenido a nuestra lista de compra"
    loop do
      puts "a - Agregar un Articulo"
      puts "r - Remover un Articulo"
      puts "v - Mostrar todos los Articulos"
      puts "m - Marcar un Articulo"
      puts "b - Borrar todos los Articulos"
      puts "s - Salir de la App"
      puts "__________________________________"
      print "Opcion: "
      inpust = gets.chomp
      case inpust
      when "a"
        print "Ingrese un Articulo: "
        item = gets.chomp
        @list.Add_item(item)
        puts "****************************************"
        puts "#{item} ha sido agregado correctamente"
        puts "****************************************"
      when "r"
        print "Digite el Id del articulo: "
        remove = gets.chomp.to_i.abs
        item = @list.remove_item(remove)
        puts "****************************************"
        puts "#{item.text} ha sido agregado correctamente"
        puts "****************************************"
      when "v"
        @list.show_all
      when "m"
        print "Digite el Id del articulo: "
        remove = gets.chomp.to_i.abs
        if remove > @list.tamano
          puts "Id no exite"
        else
          @list.cheack_item(remove)
        end
      when "b"
        print "Desea remover todos los articulos (S/N): "
        opc = gets.chomp
        if opc == "s"
          @list.remove_all
        else
          puts "Operacion Cancelada"
        end
      when "s"
        break
      else
        puts "Opcion Incorrecta"
      end
    end
    puts "Gracias por utilizar nuestra aplicacion"
  end
end

list_App = List_App.new
list_App.run()
