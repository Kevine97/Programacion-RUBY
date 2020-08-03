require_relative "./inicio.rb"

class Lista
  attr_writer :incio

  def initialize()
    @inicio = Array.new()
  end

  def Add_item(text, apellido, edad, sexo, carrera)
    item = Inicio.new(text, apellido, edad, sexo, carrera)
    @inicio.push(item)
  end

  def show_all
    if @inicio.length == 0
      puts "No hay Regsitro en tu lista"
    else
      @inicio.each_index do |index|
        puts index.to_s + " - " + @inicio[index].to_s
      end
    end
  end
end
