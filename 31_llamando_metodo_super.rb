=begin

    En este ejemplo continuando con herencia veremos como 
    llamar a los metodo de la super clase
=end

# definicion de la clase Persona
class Persona

  #definicion de atributos
  attr_accessor :primer_nombre, :segundo_nombre,
                :primer_apellido, :segundo_apellido, :edad

  # definicion de constructor
  def initialize(edad)
    @edad = edad
  end

  # definicion de metodos propios
  def nombre_completo
    primer_nombre.to_s << segundo_nombre.to_s << primer_apellido.to_s << segundo_apellido.to_s
  end

  def get_edad
    "edadggg: #{@edad} "
  end
end # fin de la clase Persona

# definicion de la clase Profesor con herencia de persona
class Profesor < Persona

  #definicion de atributos
  attr_accessor :numero_empleado, :salario

  # definicion de constructor
  def initialize(edad)
    super(edad) # invocacion del contructor de persona usando la palabra reservada super pasando como argumento la edad
  end

  # definicion de metodo llamando al metodo que existe en la clase persona
  def nombre_completo
    super # invocando metodo como este no recibe parametros basta con la palabra reservada super
  end
end # fin de la clase Profesor

# definicion de la clase Alumno con hernecia de persona
class Alumno < Persona

  #definicion de atributos
  attr_accessor :numero_carnet, :numero_clases

  # definicion de constructor
  def initialize(edad)
    super(edad) # invocacion del contructor de persona usando la palabra reservada super pasando como argumento la edad
  end

  # definicion de metodo
  def nombre_completo
    "Alumno(#{numero_carnet}): " << primer_nombre.to_s << " " <<
    segundo_nombre.to_s << " " << primer_apellido.to_s << " " << segundo_apellido.to_s << " Edad:" << edad.to_i
  end
end # fin de la clase Alumno

# instanciamos al primer alumno
alumno = Alumno.new (40)
alumno.numero_carnet = 20190301
alumno.numero_clases = 5
alumno.primer_nombre = "Hilario"
alumno.primer_apellido = "Campos"

# instanciamos al primer profesor
profesor = Profesor.new (30)
profesor.numero_empleado = 123456789
profesor.salario = 3000
profesor.primer_nombre = "Antonio"
profesor.primer_apellido = "Silva"

# mostramos en consola los resultados
puts alumno.nombre_completo
puts profesor.nombre_completo
puts alumno.get_edad
