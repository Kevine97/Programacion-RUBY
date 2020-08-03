=begin 
    en este ejemplo haremos uso de constructores 
    y de variables de clases mencionadas en clases anteriores
=end

# Creando clase con constructor

class Alumno # inicia clase alumno

  # atributos de clase
  attr_accessor :sexo
  attr_accessor :direccion
  # definimos la variable de clase
  @@alumnos = [] # de tipo Array

  #definimos el constructor
  def initialize(nombre) # inicio del constructor parametrizado espera de parametro el nombre de la persona
    @nombre = nombre # setiamos el nombre para la nueva instancia
    @@alumnos << self # acumulamos la nueva instancia en nuestra variable de clase
  end # fin del constructor

  # como nombre no tiene alcance hacemos el get de este atributo
  def get_nombre
    @nombre # retornamos la variable de instancia
  end

  # declaramos un metodo static con la palabra reservada self
  def self.alumnos # inicio del metodo estatico
    @@alumnos # retornamos la variable de clases que tendra cada una de las clases que instanciamos
  end # fin del metodo estatico
end # termina clase alumno

# creando una instancia distintas instancia haciendo uso del constructor los parentesis son opcionales
alumno1 = Alumno.new "Hilario"
alumno2 = Alumno.new "Pedro"
alumno3 = Alumno.new "Maria"

# Mostrando el resultado de la variable clase
puts Alumno.alumnos
#alumno1.direccion = "Upoli H4"
#puts Alumno.alumnos.inspect
