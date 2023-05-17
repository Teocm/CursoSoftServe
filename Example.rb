#puts "Hello, world"
#puts permite salto linea
#print "Hello, worldn"
#print no permite salto de linea

#obtener datos
print "ingrese su nombre"
nombre = gets.chomp #chomp no permite el salto de linea del signo de exclamacion
puts "hola, " + nombre +"!"


#obtener y concatenar datos
puts "Calcualdorar suma"
print "ingrese un número: "
num1 = gets.chomp.to_i #to_i convierte a integer
print "ingrese otro numero: "
num2 = gets.chomp.to_i
resultado = num1+num2
puts "Resultado: "+resultado.to_s #to_s convierte a cadena de caracteres


#obtener y concatenar datos
puts "Calcualdorar suma"
print "ingrese un número: "
num1 = gets.chomp.to_i #to_i convierte a integer
print "ingrese otro numero: "
num2 = gets.chomp.to_i
resultado = num1+num2
puts "Resultado:  #{resultado}" #place holder permite evaluar la expresion entera y convertirla a string

#obtener y concatenar datos
puts "Calcualdorar suma"
print "ingrese un número: "
num1 = gets.chomp.to_f #to_f convierte a flotante
print "ingrese otro numero: "
num2 = gets.chomp.to_f
resultado = num1+num2
puts "Resultado:  #{resultado}" #place holder permite evaluar la expresion entera y convertirla a string

#my_var.class = devuelte de que tipo es la vble
