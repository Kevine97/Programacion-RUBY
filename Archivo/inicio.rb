class Inicio
  attr_accessor :text, :apelldo, :edad, :sexo, :carrera

  def initialize(text = "", apelldo, edad, sexo, carrera)
    @text = text
    @apelldo = apelldo
    @edad = edad
    @sexo = sexo
    @carrera = carrera
  end

  def to_s
    "Nombre: " + @text + "\tApellido: " + @apelldo + "\tEdad: " + @edad + "\tSexo: " + @sexo + "\tCarrera: " + @carrera
  end
end
