require_relative "./index.rb"

class Disco < Multimedia
  @@contador_mp3 = 0
  attr_accessor :genero

  def initialize(titulo, autor, formato, duracion, genero)
    super(titulo, autor, formato, duracion)
    @genero = genero
    @@contador_mp3 += 1
  end

  def get_print
    "| Disco |\nTitulo: #{@titulo}\nAutor: #{@autor} \nFormato: #{@formato} \nDuracion: #{@duracion} \nGenero: #{genero}"
  end

  def contador
    return @@contador_mp3
  end
end
