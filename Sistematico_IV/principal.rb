require_relative "./index.rb"
require_relative "./disco.rb"
require_relative "./pelicula.rb"
@array_disco = Array.new
@array_pelicula = Array.new
@conteo = 0
@conteo_pelicula = 0

def mostrar_menu_musica
  loop do
    puts "______________________________"
    puts "\n-----[[ RUBY Musica]]-----"
    puts "______________________________"
    puts "1 - Agregar"
    puts "2 - Mostrar"
    puts "3 - Total"
    puts "4 - Salir del menu"
    puts "________________________________"
    print "Opcion: "
    opc = gets.chomp.to_i.abs
    case opc
    when 1
      print "Ingrese el Titulo: "
      titulo = gets.chomp
      print "Ingrese el Autor: "
      autor = gets.chomp
      begin
        print "Ingrese el Formato: "
        formato = gets.chomp
      end while formato.downcase != "dvd" && formato.downcase != "avi" && formato.downcase != "mp3" && formato.downcase != "wav"
      print "Ingrese la duracion: "
      duracion = gets.chomp.to_s
      begin
        print "Ingrese el Genero: "
        genero = gets.chomp
      end while genero.downcase != "rock" && genero.downcase != "pop" && genero.downcase != "opera" && genero.downcase != "salsa"
      disco = Disco.new(titulo, autor, formato, duracion, genero) #Instanceamos la clase Disco y pasamos por parametros los atributos
      @array_disco.push(disco) #hacemos un push al array para agregar el objeto
      @conteo = disco.contador # asigamos a @conteo el contador de los disco
      puts "\n************************************************"
      puts "\tDisco Agregado Correctamente."
      puts "************************************************"
      gets
    when 2
      puts "\n************************************************"
      puts "\tLista de Discos Registrados."
      puts "************************************************"
      @array_disco.each_index do |index|
        print "\n#{index.to_s}" + " - " + @array_disco[index].get_print
        print "\n"
      end
      gets
    when 3
      puts "\n************************************************"
      puts "\tConteo Discos en la Lista."
      puts "************************************************"
      puts "\nConteo de disco: #{@conteo}"
      gets
    when 4
      break
    else
      puts "Opcion Incorrecta"
    end
  end
end

def mostrar_menu_pelicula
  loop do
    puts "______________________________"
    puts "\n-----[[ RUBY Pelicula]]-----"
    puts "______________________________"
    puts "1 - Agregar"
    puts "2 - Mostrar "
    puts "3 - Total"
    puts "4 - Salir del menu"
    puts "________________________________"
    print "Opcion: "
    opc = gets.to_i.abs
    case opc
    when 1
      print "Ingrese el Titulo: "
      titulo = gets.chomp
      print "Ingrese el Autor: "
      autor = gets.chomp
      begin
        print "Ingrese el Formato: "
        formato = gets.chomp
      end while formato.downcase != "dvd" && formato.downcase != "avi" && formato.downcase != "mp3" && formato.downcase != "wav"
      print "Ingrese la duracion: "
      duracion = gets.chomp.to_s
      print "Ingrese el actor principal: "
      actor_principal = gets.chomp
      print "Ingrese la actriz Principal: "
      actriz_principal = gets.chomp
      pelicula = Pelicula.new(titulo, autor, formato, duracion, actor_principal, actriz_principal)
      @array_pelicula.push(pelicula)
      @conteo_pelicula = pelicula.contador
      puts "\n************************************************"
      puts "\tPelicula Agregada Correctamente."
      puts "************************************************"
      gets
    when 2
      puts "\n************************************************"
      puts "\tLista de Peliculas Registrados."
      puts "************************************************"
      @array_pelicula.each_index do |index|
        print "\n#{index.to_s}" + " - " + @array_pelicula[index].get_print
        print "\n"
      end
      gets
    when 3
      puts "\n************************************************"
      puts "\tConteo Peliculas en la Lista."
      puts "************************************************"
      puts "\nConteo de pelicula: #{@conteo_pelicula}"
      gets
    when 4
      break
    else
      puts "Opcion Incorrecta"
    end
  end
end

loop do
  puts "______________________________"
  puts "\n-----[[ RUBY NET-SPOT]]-----"
  puts "______________________________"
  puts "1 - Peliculas"
  puts "2 - Musicas "
  puts "3 - Salir de la App"
  puts "________________________________"
  print "Opcion: "
  opc = gets.to_i.abs
  case opc
  when 1
    mostrar_menu_pelicula()
  when 2
    mostrar_menu_musica()
  when 3
    break
  else
    puts "Opcion Incorrecta"
  end
end
