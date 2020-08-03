print "¿Esta seguro que desea eliminar un archivo? (S/N): "
opc = gets.chomp

if opc == "S".downcase
  print "Ingrese el nombre: "
  nombre = gets.chomp
  print "Ingrese el apellido: "
  apellido = gets.chomp
  l_Nombre_ = nombre[0]
  if File.exist?("C:/Ruby/SISTEMATICO_III/BD/" + l_Nombre_.downcase + apellido.downcase + ".txt")
    File.delete("C:/Ruby/SISTEMATICO_III/BD/" + l_Nombre_.downcase + apellido.downcase + ".txt")
    puts "\n********************************************"
    puts "\tOperacion Realizada Correctamente."
    puts "********************************************"
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
