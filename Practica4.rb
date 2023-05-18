#Strings
#Segun el encoding el string puede contener todo tipo de carcteres incluyendo hasta letras chinas y caracteres especiales
#Los strings en ruby son OBJETOS
#Los string en ruby son mutables

#String
puts "Cualquier mensaje"

#String vacio
cadena = String.new

=begin
Diferencia entre comillas doble y sencilla:
"" = permite secuencias de escape ej: \n
'' = Imprime literalmente todo como cadena de caracteres
=end

#.join = permite concatenar un array de caracteres y volverlo un String

#Ejemplo para concatenar:
Edad = 50
Nombre = "mateo"

puts "Mi nombre es #{Nombre} y mi edad es #{Edad} " #Aunque edad es un integer permite la impresion

#Obtener tamaño de una cadena de caracteres: usar .size y .lenght
puts Nombre.size
puts Nombre.lenght

#Obtener caracteres de una cadena:
puts Nombre[0,3] #devuelve Nomb

#.include devuelve true o false dada a condicion
#.index devuelve posicion del primer caracter de la condicion dada
#.downcase devuelve minuscula
#.strip devuelve la cadena sin los espacios (l-r quita los del final o inicio)
#Split devuelve la cadena en un array y separa por espacios, si se le pasa un
#argumento separa dado el argumento
#.reverse revierte la cadena

#append (<<) (es una especie de concatenacion)
cadena = "cadena de caracteres"
cadena << ", si una cadena"
puts cadena
