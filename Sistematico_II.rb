#Estudiante : Kevin Alexander Esquivel Rojas
#Docente: Hilario Campos
#Fecha: 04/06/202

class Principal
  attr_reader :exit

  def initialize
    @exit = false
  end

  def pausa
    command = ` pause `
    puts command
  end

  def Mostrar_menu
    puts "______________________________"
    puts "\n-----[[ RUBY Upoli]]-----"
    puts "______________________________"
    puts "\n1) Operaciones Arimeticas"
    puts "2) Generacion de Rangos"
    puts "3) Cadena de caracteres"
    puts "4) Elaborado por..."
    puts "5) Salir del sistema"
    puts "______________________________"
    print "Opcion: "
  end

  def Mostrar_Opcion
    opt = gets.chomp.to_i.abs

    case opt

    when 1
      aritmeti = Arimetica.new
      until aritmeti.exit
        aritmeti.Mostrar_menu()
        aritmeti.Mostrar_Opcion()
      end
    when 2
      rangos = Rangos.new
      until rangos.exit
        rangos.Mostrar_menu()
        rangos.Mostrar_Opcion()
      end
    when 3
      cadena = Cadena.new
      until cadena.exit
        cadena.Mostrar_menu()
        cadena.Mostrar_Opcion()
      end
    when 4
      puts "\nEl siguiente programa fue elaborado por el estudiante: Kevin Esquivel Rojas"
      pausa()
    when 5
      @exit = true
    else puts "\nOpcion Incorrecta"
pausa()
    end
  end
end

#########################################################################################################
#########################################################################################################

#Clase que controla todas las operaciones de la segunda opcion
class Cadena
  attr_reader :exit

  def initialize
    @exit = false
  end

  def pausa
    command = ` pause `
    puts command
  end

  #Metodo que controla la multiplicacion con cadena
  def Multiplicar_Cadena
    print "Ingrese su cadena: "
    cadena = gets.chomp
    print "La cantidad de veces a multiplicar: "
    multiplo = gets.chomp.to_i.abs
    puts "\n#{cadena * multiplo}"
  end

  #Metodo que manipula la cadena revertida
  def Revertir_Cadena
    print "Ingrese su cadena: "
    cadena = gets.chomp
    puts cadena.reverse
  end

  #Metodo que controla la longitud de una cadena
  def Longitud_Cadena
    print "Ingrese su cadena: "
    cadena = gets.chomp
    puts cadena.length
  end

  #Metodo que convierte en Mayuscala cualquier cadena
  def Mayuscula_Cadena
    print "Ingrese su cadena: "
    cadena = gets.chomp
    puts cadena.upcase
  end

  #Metodo que convierte en Minuscula cualquier cadena
  def Miniscula_Cadena
    print "Ingrese su cadena: "
    cadena = gets.chomp
    puts cadena.downcase
  end

  #Metodo que muestra el menu de esta opcion
  def Mostrar_menu
    puts "______________________________"
    puts "\n-----[[ RUBY CADENAS]]-----"
    puts "______________________________"
    puts "1) Multiplicar cadenas"
    puts "2) Revertir cadena de caracteres (ejemplo: juan => nauj)"
    puts "3) Longitud de una cadena (ejemplo: perro => longitud 4)"
    puts "4) Convertir cadena a mayúsculas"
    puts "5) Convertir cadena a minúsculas"
    puts "6) Volver al Menu Principal"
    puts "______________________________"
    print "Opcion: "
  end

  #Metodo que controla las opciones del menu cadenas
  def Mostrar_Opcion
    opt = gets.chomp.to_i.abs

    case opt
    when 1
      Multiplicar_Cadena()
      pausa()
    when 2
      puts "\n"
      Revertir_Cadena()
      pausa()
    when 3
      puts "\n"
      Longitud_Cadena()
      pausa()
    when 4
      puts "\n"
      Mayuscula_Cadena()
      pausa()
    when 5
      puts "\n"
      Miniscula_Cadena()
      pausa()
    when 6
      @exit = true
    else puts "\nOpcion Incorrecta"
    end
  end
end

#########################################################################################################
#########################################################################################################

#Clases que maneja la opcion de rango

class Rangos
  attr_reader :exit

  def initialize
    @exit = false
  end

  def pausa
    command = ` pause `
    puts command
  end

  #Metodo que cotrola el rango de los numeros
  def Rango_Numero
    print "Ingrese Rango inicial: "
    rango_inicio = gets.chomp.to_i.abs
    print "Ingrese Rango Final: "
    rango_final = gets.chomp.to_i.abs
    (rango_inicio..rango_final).each do |i|
      puts i
    end
  end

  #Metodo que controla el ranfo de las letras
  def Rango_Letras
    print "Ingrese Rango inicial: "
    rango_inicio = gets.chomp.to_s
    print "Ingrese Rango Final: "
    rango_final = gets.chomp.to_s
    (rango_inicio..rango_final).each do |i|
      puts i
    end
  end

  #Metodo que muestra el menus de esta opcion
  def Mostrar_menu
    puts "______________________________"
    puts "\n-----[[ RUBY RANGOS]-----"
    puts "______________________________"
    puts "1) Generación numérica"
    puts "2) Generación de letras"
    puts "3) Volver al Menu Principal"
    puts "______________________________"
    print "Opcion: "
  end

  #Metodo que controla las opciones de este menu
  def Mostrar_Opcion
    opt = gets.chomp.to_i.abs

    case opt
    when 1
      Rango_Numero()
      pausa()
    when 2
      Rango_Letras()
      pausa()
    when 3
      @exit = true
    else puts "\nOpcion Incorrecta"
    end
  end
end

#########################################################################################################
#########################################################################################################

#Clase que maneja las operaciones arimeticas
class Arimetica
  attr_reader :exit

  def initialize
    @exit = false
  end

  def pausa
    command = ` pause `
    puts command
  end

  #metodo que muestra el menu de aritmetico
  def Mostrar_menu
    puts "______________________________"
    puts "\n-----[[ RUBY ARITMETICO]]-----"
    puts "______________________________"
    puts "1) Suma"
    puts "2) Resta"
    puts "3) División"
    puts "4) Multiplicación"
    puts "5) Potencia"
    puts "6) Residuo"
    puts "7) Volver al Menu Principal"
    puts "______________________________"
    print "Opcion: "
  end

  #Metodo que calcula la suma de dos numeros
  def Suma
    print "Ingrese El numero 1: "
    numero1 = gets.chomp.to_f
    print "Ingrese El numeor 2: "
    numero2 = gets.chomp.to_f
    puts "\nSuma: #{numero1 + numero2}"
  end

  #Metodo que calcula la resta de dos numeros
  def Resta
    print "Ingrese El numero 1: "
    numero1 = gets.chomp.to_f
    print "Ingrese El numeor 2: "
    numero2 = gets.chomp.to_f
    puts "\nResta: #{numero1 - numero2}"
  end

  #Metodo que calcula la division entre dos numeros

  def Division
    print "Ingrese El numero 1: "
    numero1 = gets.chomp.to_f
    print "Ingrese El numeor 2: "
    numero2 = gets.chomp.to_f

    if numero2 == 0
      puts "\nNo es posible dividir entre 0"
    else
      puts "\nDivision: #{numero1 / numero2}"
    end
  end

  #Metodo que calcula la multiplicacion entre dos numeros
  def Multiplicacion
    print "Ingrese El numero 1: "
    numero1 = gets.chomp.to_f
    print "Ingrese El numeor 2: "
    numero2 = gets.chomp.to_f

    puts "\nMultiplicacion: #{numero1 * numero2}"
  end

  #Metodo que calcula el residuo de dos numeros
  def Residuo
    print "Ingrese El numero 1: "
    numero1 = gets.chomp.to_f
    print "Ingrese El numeor 2: "
    numero2 = gets.chomp.to_f

    puts "\nResiduo: #{numero1 % numero2}"
  end

  #Metodo que calcula la potencia de dos numeros
  def Potencia
    print "Ingrese El numero: "
    numero1 = gets.chomp.to_f
    print "Ingrese la Potencia: "
    numero2 = gets.chomp.to_f

    puts "\nPotencia: #{numero1 ** numero2}"
  end

  #Metodo que controla las opciones del menu aritmetico
  def Mostrar_Opcion
    opt = gets.chomp.to_i.abs

    case opt
    when 1
      Suma()
      pausa()
    when 2
      Resta()
      pausa()
    when 3
      Division()
      pausa()
    when 4
      Multiplicacion()
      pausa()
    when 5
      Potencia()
      pausa()
    when 6
      Residuo()
      pausa()
    when 7
      @exit = true
    else puts "\nOpcion Incorrecta"
    end
  end
end

#########################################################################################################
#########################################################################################################

principal = Principal.new

until principal.exit
  principal.Mostrar_menu()
  principal.Mostrar_Opcion()
end
