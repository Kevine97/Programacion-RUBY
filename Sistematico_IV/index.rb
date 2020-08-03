class Multimedia
  attr_accessor :titulo, :autor, :formato, :duracion

  def initialize(titulo, autor, formato, duracion)
    @titulo = titulo
    @autor = autor
    @formato = formato
    @duracion = duracion
  end
end
