require "matrix" #Importando la clase matrix

matriz = Matrix[[1, 2, 3], [1, 2, 3], [1, 2, 3]]

#:diagonal -> Permite visualizar la diagonal de una matriz
#:strict_lower-> Permite visualizar los elementos que estan abajo de la diagonal
#:strict_upper ->Permite visualizar los elementos que estan arriba de la diagonal
matriz.each do |i|
  print "#{i.to_s} "
end
