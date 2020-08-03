require_relative "./index.rb"

class Pelicula < Multimedia
  @@contador_dvd = 0
  attr_accessor :actor_principal, :actriz_principal

  def initialize(titulo, autor, formato, duracion, actor_principal, actriz_principal)
    super(titulo, autor, formato, duracion)
    @actor_principal = actor_principal
    @actriz_principal = actriz_principal
    @@contador_dvd += 1
  end

  def get_print
    "| Pelicula |\nTitulo: #{@titulo}\nAutor: #{@autor} \nFormato: #{@formato} \nDuracion: #{@duracion.to_s} \nActor Principal: #{actor_principal} \nActriz Principal: #{actriz_principal}"
  end

  def contador
    return @@contador_dvd
  end
end
