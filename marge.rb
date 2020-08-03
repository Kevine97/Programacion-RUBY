# Merge: unir

hash1 = { dinero: 100, nombre: "Juan" }

hash2 = { dinero: 50, nombre: "Juan" } 

# simple merge
puts "Merge Simple"
puts "Hash 1"
puts hash1
puts "Hash 2"
puts hash2
puts "Merge de Hash 1 y Hash2"
puts hash1.merge(hash2)
puts hash2.merge(hash1)

# Agregan complejidad       
puts "Merge Avanzado"
puts hash1.merge(hash2) { | key, old, new | old }
puts hash1.merge(hash2) do | key, old, new |
						
							if old[:dinero] > new[:dinero]
								old
							else
								new
							end

						end 
puts "Usando ternario"
puts hash1[:dinero]
puts hash2[:dinero]
puts hash1.merge(hash2) {
							| key, old, new | 
							old > new ? old : new 
							
						}