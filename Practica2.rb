=begin
1. En Ruby, tanto chomp como chop son métodos utilizados para manipular cadenas de texto, pero tienen diferencias en su funcionamiento:

chomp: El método chomp se utiliza para eliminar el carácter de nueva línea al final de una cadena de texto. Por defecto,
elimina el carácter "\n" (salto de línea), pero también se puede especificar otro carácter que se desee eliminar.
La diferencia principal con chomp en Ruby es que el método chomp no modifica la cadena original,
sino que devuelve una nueva cadena con el carácter eliminado.

Ejemplo en Ruby:
=end
cadena = "Hola mundo\n"
cadena_sin_nueva_linea = cadena.chomp
puts cadena_sin_nueva_linea  # Imprime "Hola mundo" sin el salto de línea al final
puts cadena  # Imprime "Hola mundo\n" (la cadena original no se modificó)

=begin
1.2 chop: El método chop se utiliza para eliminar el último carácter de una cadena de texto, independientemente de cuál sea ese carácter.
A diferencia de chomp, chop modifica directamente la cadena original, eliminando el último carácter y devolviendo la cadena modificada.

Ejemplo en ruby:
=end
cadena = "Hola mundo"
cadena_chop = cadena.chop
puts cadena_chop  # Imprime "Hola mund" (el último carácter fue eliminado)
puts cadena  # Imprime "Hola mundo" (la cadena original se modificó)

=begin
En resumen, la principal diferencia entre chomp y chop en Ruby es que chomp elimina el carácter de nueva línea al final de la
cadena y devuelve una nueva cadena sin modificar la original, mientras que chop elimina el último carácter de la cadena original y
la modifica directamente.

2. En Ruby, existen diferentes ámbitos de variables que determinan su alcance y visibilidad dentro de un programa. Estos ámbitos son
los siguientes:

Variable local (Local variable): Una variable local se declara con una letra minúscula o con un guion bajo al inicio de su nombre
(por ejemplo, nombre, _variable). Su alcance está limitado al bloque o método en el que se declaran. Las variables locales no son
accesibles desde otros bloques o métodos.

Variable de instancia (Instance variable): Una variable de instancia se declara con el prefijo @ seguido de su nombre
(por ejemplo, @nombre, @variable). Estas variables pertenecen a una instancia específica de una clase y son accesibles dentro de
los métodos de esa instancia. Cada instancia tiene su propia copia de las variables de instancia.

Variable de clase (Class variable): Una variable de clase se declara con el prefijo @@ seguido de su nombre (por ejemplo, @@contador).
Estas variables pertenecen a una clase en particular y son compartidas por todas las instancias de esa clase. Pueden ser accedidas y
modificadas por los métodos de la clase y sus subclases.

Variable global (Global variable): Una variable global se declara con el prefijo $ seguido de su nombre (por ejemplo, $contador).
Estas variables tienen un alcance global y pueden ser accedidas y modificadas desde cualquier parte del programa. Sin embargo,
se recomienda usarlas con precaución, ya que pueden causar efectos secundarios no deseados y dificultar el mantenimiento del código.

Constante (Constant): Una constante se declara en mayúsculas al inicio de su nombre (por ejemplo, PI, NOMBRE). Las constantes tienen
un alcance global y su valor no debe cambiar una vez asignado. Pueden ser accedidas desde cualquier parte del programa.

Es importante tener en cuenta que el ámbito de una variable puede estar influenciado por su ubicación en el código, como por ejemplo,
si se encuentra dentro de un bucle, una condición o un bloque de código específico. También es posible acceder a variables de diferentes
ámbitos utilizando técnicas como la herencia y el acceso a métodos.

3. En Ruby, la clase String proporciona varios métodos útiles para manipular cadenas de texto. Una descripción de los
métodos reverse, capitalize y length:

reverse: El método reverse invierte el orden de los caracteres en una cadena y devuelve una nueva cadena con los caracteres invertidos.
Es útil cuando se necesita obtener una versión invertida de una cadena.

Ejemplo:
=end
cadena = "Hola mundo"
cadena_invertida = cadena.reverse
puts cadena_invertida  # Imprime "odnum aloH"

=begin
3.1 capitalize: El método capitalize devuelve una nueva cadena con la primera letra en mayúscula y las demás letras en minúscula.
El resto de la cadena se mantiene sin cambios. Es útil para formatear correctamente una cadena, asegurando que la primera letra esté
en mayúscula.

Ejemplo:
=end
cadena = "hola mundo"
cadena_formateada = cadena.capitalize
puts cadena_formateada  # Imprime "Hola mundo"

=begin
3.2 length: El método length devuelve el número de caracteres en una cadena. Es útil cuando se necesita conocer la longitud de una cadena,
por ejemplo, para realizar validaciones o cálculos basados en la cantidad de caracteres.

Ejemplo:
=end
cadena = "Hola mundo"
longitud = cadena.length
puts longitud  # Imprime 10

=begin
4.
Area de un circulo:
=end

def calcular_area_circulo(radio)
  Math::PI * radio**2
end

radio = 5
area_circulo = calcular_area_circulo(radio)
puts "El área del círculo es: #{area_circulo}"


#Area de un triangulo:

def calcular_area_triangulo(base, altura)
  (base * altura) / 2.0
end

base = 8
altura = 4
area_triangulo = calcular_area_triangulo(base, altura)
puts "El área del triángulo es: #{area_triangulo}"

#Area de una cuadrado:

def calcular_area_cuadrado(lado)
  lado**2
end

lado = 6
area_cuadrado = calcular_area_cuadrado(lado)
puts "El área del cuadrado es: #{area_cuadrado}"


#Area de una rectangulo:

def calcular_area_rectangulo(base, altura)
  base * altura
end

base = 5
altura = 10
area_rectangulo = calcular_area_rectangulo(base, altura)
puts "El área del rectángulo es: #{area_rectangulo}"


#Area de un trapecio:

def calcular_area_trapecio(base1, base2, altura)
  (base1 + base2) * altura / 2.0
end

base1 = 4
base2 = 6
altura = 3
area_trapecio = calcular_area_trapecio(base1, base2, altura)
puts "El área del trapecio es: #{area_trapecio}"
