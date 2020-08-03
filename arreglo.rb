=begin
calificaciones = [1,2,3,4,5]



puts calificaciones.reverse #Revierte el arreglo
puts calificaciones.include?(3) #Busca elemento dentro del arreglo
puts calificaciones.first #Devuelve el primer elemento del arreglo
puts calificaciones.last #Devuelve el ultimo elemento dentro del arreglo
puts calificaciones.uniq #Devuelve el arreglo sin elementos repetidos
puts calificaciones.sample #Devuelve un elemento ramdon del arreglo
=end

#Rangos

#numero = [1,2,3,4,5]

#(1..20).step(1).each do |numero| #step() emprime saltando los numeros depende al parametro que le pasemos

#    p numero

#end

#añadiendo un elemento a un arreglo

video_juego = ["Celda", "Mario", "Clash Royale"]

video_juego.push("Kevin") #agregando un elemento al final del arreglo
video_juego.unshift("Hola") #agregando un elemento al inicio del arreglo

video_juego.each do |i|
  puts i
end
