#Metodo que permite registrar un usuario
def registro
  print "Ingrese el nombre: "
  nombre = gets.chomp
  print "Ingrese el Apellido: "
  apellido = gets.chomp
  print "Ingrese la edad: "
  edad = gets.chomp.to_i
  print "Ingrese el sexo (F/M): "
  sexo = gets.chomp.to_s
  print "Ingrese la carrera: "
  carrera = gets.chomp

  #Operaciones
  l_Nombre_ = nombre[0]

  if File.exist?(File.dirname(__FILE__) + "/BD/" + l_Nombre_.downcase + apellido.downcase + ".txt")
    # código si el archivo o la carpeta existe
    puts "\n********************************************"
    puts "\tATENCION! El Archivo ya exite."
    puts "********************************************"
    gets
  else
    # código si el archivo o la carpeta no existe
    my_file = File.new(File.dirname(__FILE__) + "/BD/" + l_Nombre_.downcase + apellido.downcase + ".txt", "w")
    #Insertando en el archivo
    my_file.puts nombre
    my_file.puts apellido
    my_file.puts edad
    my_file.puts sexo
    my_file.puts carrera
    my_file.close
    puts "\n************************************************"
    puts "\tOperacion Realizada Correctamente."
    puts "************************************************"
    gets
  end
end

#Metodo que muestra los registro que tenga mayor a 20 años
def mayor_20
  Dir.foreach(File.dirname(__FILE__) + "/BD") do |fname|
    next if fname == "." or fname == ".."
    my_file = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r+")
    if my_file.readlines[2].to_i > 20
      f = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r") do |f|
        puts
        puts f.read
      end
    end
  end
  gets
end

#metodo que muestra los registro menore o igual a 20
def menor_20
  Dir.foreach(File.dirname(__FILE__) + "/BD") do |fname|
    next if fname == "." or fname == ".."
    my_file = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r+")
    if my_file.readlines[2].to_i <= 20
      f = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r") do |f|
        puts
        puts f.read
      end
    end
  end
  gets
end

#Metodo que muestra a todos los hombres que estan en nuestro BD
def hombre
  Dir.foreach(File.dirname(__FILE__) + "/BD") do |fname|
    next if fname == "." or fname == ".."
    my_file = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r+")
    if (my_file.readlines[3][0].downcase == "M".downcase)
      f = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r") do |f|
        puts
        puts f.read
      end
    end
  end
  gets
end

#Metodo que muestra a todas las mujeres que estan en nuestro BD
def mujer
  Dir.foreach(File.dirname(__FILE__) + "/BD") do |fname|
    next if fname == "." or fname == ".."
    my_file = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r+")
    if (my_file.readlines[3][0].downcase == "F".downcase)
      f = File.open(File.dirname(__FILE__) + "/BD/" + fname, "r") do |f|
        puts
        puts f.read
      end
    end
  end
  gets
end

#Metodo que permite borrar un archivo
def borrar
  print "¿Esta seguro que desea eliminar un archivo? (S/N): "
  opc = gets.chomp

  if opc == "S".downcase
    print "Ingrese el nombre: "
    nombre = gets.chomp
    print "Ingrese el apellido: "
    apellido = gets.chomp
    l_Nombre_ = nombre[0]
    if File.exist?(File.dirname(__FILE__) + "/BD/" + l_Nombre_.downcase + apellido.downcase + ".txt")
      File.delete(File.dirname(__FILE__) + "/BD/" + l_Nombre_.downcase + apellido.downcase + ".txt")
      puts "\n************************************************"
      puts "\tOperacion Realizada Correctamente."
      puts "************************************************"
      gets
    else
      # código si el archivo o la carpeta no existe
      puts "\n********************************************"
      puts "\tATENCION! El Archivo no exite."
      puts "********************************************"
      gets
    end
  else
    puts "\n********************************************"
    puts "\tWARNING! Operacion Cancelada"
    puts "********************************************"
    gets
  end
end

#Metodo que anida el menu de la opcion 2 del menu principal
def mostrar
  loop do
    puts "a - Listar mujeres"
    puts "b - Listar hombres."
    puts "c - Listar mayores de 20 años."
    puts "d - Listar menores o igual a 20 años."
    puts "r - Regresar al menu principal"
    puts "_________________________________________"
    print "Opcion: "
    opc = gets.chomp
    case opc
    when "a"
      mujer()
    when "b"
      hombre()
    when "c"
      mayor_20()
    when "d"
      menor_20()
    when "r"
      break
    else
      puts "Opcion Incorrecta"
    end
  end
end

loop do
  puts "\n-----[[ RUBY Upoli]]-----"
  puts "\n1 - Registar Persona"
  puts "2 - Listar Persona"
  puts "3 - Eliminar Pesona"
  puts "4 - Salir"
  puts "_________________________________"
  print "Opcion: "
  opc = gets.chomp.to_i

  case opc
  when 1
    registro()
  when 2
    mostrar()
  when 3
    borrar()
  when 4
    puts "Saliendo del sistema ..."
    break
  else
    puts "Opcion Incorrecta"
  end
end
