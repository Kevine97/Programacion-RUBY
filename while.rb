=begin
playlist = ["First Song", "Second Song", "Third Song"]
play = true
index_song = 0

while (index_song < playlist.length) && play
  puts "Reproduciendo #{playlist[index_song]...}"
  index_song += 1

  print "Coloca 0 para detener la reproduccion: "
  respuesta = gets.chomp.to_i
  if respuesta == 0
    play = false
  end
  #play = false if respuesta == 0
end
=end

numero_magico = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
num = numero_magico.sample

print "Adivina el numero magico: "
numero = gets.chomp.to_i

until numero == num
  print "Incorrecto, adivina otra vez: "
  numero = gets.chomp.to_i
end
puts "Felicidades, has adivinado el numero magico #{num}"
