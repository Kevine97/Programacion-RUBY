=begin 
    Acontinuacion vamos a crear nuestra primera clase, esta tendra por nombre Alumno
    y va a tener los siguientes atributos:

        - nombre 
        - sexo
        - direccion
=end

# Inicio de la clase
class Alumno # siempre haciendo uso de la palabra reservada "class" seguido del nombre de la Clase iniciando con mayusculas "Alumno"

    # lo norma seria declarar una variable seguida de su geter y setter ejemplo private String nombre;
    # aqui es un poco diferente por que hacemos uso del tipo de dato symbolo ":sexo" pero anterior a eso le indicamos si este sera
    # solo lectura "attr_reader" aqui no podre asignarle valor desde una instancia directamente al atributo
    attr_writer :sexo
    # solo escritura "attr_writer" aqui no podre obtener el valor desde una instancia directamente al atributo
    attr_reader :sexo
    # escritura y lectura "attr_accessor" aqui podremos leer y obtener el valor desde una instancia directamente al atributo
    attr_accessor :direccion 

    # tambien podemos hacer los tradicionales getter y setter pero en ruby esta demas por que estos estan definidos por attr_writer (set), attr_reader (get) y attr_accessor (get y set)
    # al no definir un alcance para nombre este esta inaccesible por eso nos ayudaremos con las "variables de instancias (@nombre)"  para crear el atributo junto con su get y set
    def set_nombre (nombre) # definicion del metodo set para el nombre esperamos como argumento "nombre"
        @nombre = nombre # la variable nombre no existe en la variable como atributo hasta que nosotros usamos @nombre por primera vez y luego asignamos el valor del argumento
    end # fin del del metodo set

    def get_nombre # definicion del metodo get para el nombre no esperamos ningun argumento 
        @nombre # hacemos un return de la variable, la variable como atributo hasta que nosotros usamos @nombre por primera vez
    end # fin del del metodo get

end # cerramos la clase con end
# fin de la clase 


# ahora como hacemos una instancia y vemos el distinto modo de acceder a las variables de dicha clase.

# haciendo una instancia de alumno
# aqui ya tenemos un diferencia con repecto a otros lenguajes en vez de usar new Clase() aqui se hace "Clase.new(si hay agumentos se pasan para el constructor)"
alumno = Alumno.new # declaramos una variable alumno y asignamos instancia de Alumno 

alumno.set_nombre('Hilario') # haciendo uso del metodo set para asignar nombre
alumno.sexo = 'Masculino' # haciendo uso del alcance de escritura
alumno.direccion = "Upoli A-2" # haciendo uso del alcance de tipo accesor (lectura/escritura)

# luego de settiar valores mostramos a pantalla los datos de alumno
puts alumno.get_nombre # haciendo uso del metodo get
puts alumno.sexo # haciendo uso del alcance de lectura
puts alumno.direccion  # haciendo uso del alcance de tipo accesor (lectura/escritura)















