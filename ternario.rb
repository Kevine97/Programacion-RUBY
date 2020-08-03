print "Ingrese su nombre: "
user = gets.chomp

=begin
if user =="Kevin"
    puts "Tutor"
else
    puts "Alumno"
end 
=end
puts (if user =="Kevin" then "Tutor" else "Alumno" end)
puts if user == "Kevin" ? "Tutor" : "Alumno"