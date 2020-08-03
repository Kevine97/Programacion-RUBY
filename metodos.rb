def evaluar(calificacion)
    
    if calificacion == 0 || calificacion == 1
        print "Reprobaste"

    elsif calificacion == 7 && calificacion ==8
        print "Excelente"
    
    elsif calificacion == 9
        print "Sastifactorio"

    elsif calificacion == 10
        print "Excelente nota"
    
    else
        print "Opcion incorrecta"
    end
end

print "Ingrese su calificacion: "
nota = gets.to_i

evaluar(nota)