=begin 
    El siguiente ejemplo muestra como realizar un herencia de clase en ruby

    vamos ha definir 3 clase Persona, Profesor y Alumnos

    podemos apreciar que el factor comun de profesor y alumno son los atributos de persona

    la herencia en java se hace atraves de la palabra reservada implements ó extends dependiendo si se trabaja con interfaces o clase
    la herencia en ruby se hace atraves del simbolo < (menor) 
=end

# inicio clase persona
class Persona
  # definicion de atributos de persona
  attr_accessor :primer_nombre, :segundo_nombre,
                :primer_apellido, :segundo_apellido

  # metodo para mostrar el nombre completo
  def nombre_completo # inicio del metodo
    # concatenacion de atributos (concateno todo junto aproposito)
    primer_nombre.to_s << segundo_nombre.to_s << primer_apellido.to_s << segundo_apellido.to_s
  end # fin del metodo
end

# fin de clase persona

# inicio de la clase Profesor con herencia de PErsona
class Profesor < Persona
  # definicion de atributos
  attr_accessor :numero_empleado, :salario

  # override del metodo que existe en Persona
  def nombre_completo # inicio del metodo
    # concateno de manera correcta para maestro
    "Maestro(#{numero_empleado}): " << primer_nombre.to_s << " " <<
    segundo_nombre.to_s << " " << primer_apellido.to_s << " " << segundo_apellido.to_s << " " << salario.to_s
  end # fin del metodo
end # fin de la clase

# inciio de la clase Alumno con herencia de Persona
class Alumno < Persona
  # definicion de atributos para persona
  attr_accessor :numero_carnet, :numero_clases

  # override del metodo que existe en Persona
  def nombre_completo
    # concateno de manera correcta para alumno
    "Alumno(#{numero_carnet}): " << primer_nombre.to_s << " " <<
    segundo_nombre.to_s << " " << primer_apellido.to_s << " " << segundo_apellido.to_s
  end # fin del metodo
end # fin de la clase

# Instancia de alumno
alumno = Alumno.new
alumno.numero_carnet = 20190301
alumno.numero_clases = 5
alumno.primer_nombre = "Hilario"
alumno.primer_apellido = "Campos"

# Instancia de profesor
profesor = Profesor.new
profesor.numero_empleado = 123456789
profesor.salario = 3000.24
profesor.primer_nombre = "Antonio"
profesor.primer_apellido = "Silva"

# mostrando a pantalla
puts alumno.nombre_completo
puts profesor.nombre_completo
