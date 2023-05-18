#Caracteriaticas de los arrays

#Los arrays son coleccione sordenadas de cualquier objeto, son indexables
#Los arrays en ruby se pueden contar de atras hacia adelante siendo -1 el ultimo (primero)
#Los arrays en ruby NO son estaticos (crece automaticamente)

cadena = "Cadena de caracteres"
puts cadena[0]
puts cadena[-1]
puts cadena[0-2]
puts cadena[1,8]

=begin
Lo que imprime:
C
s
e
adena de
=end

#Crear un array vacio, dos formas:
new_array = Array.new
new_array2 = Array.new(10)
puts new_array
puts new_array2 #Solo me imprime el array al que le di tamaño
new_arrayM = Array.new(3, "medellin")
puts new_arrayM


ciudades = ["medellin", "rionegro", "marinilla"] #otra forma de crear array
puts ciudades
puts ciudades[2] #imprime posicion 2
puts ciudades[2][3,4] #accede posicion 2 e imprime de la posicion 2 elemtos 3 hasta el 4
ciudades[4]="cambio de elemento en el array" #reemplazo un elemento en el array, queda una posicion libre ya que el array era de 3 posiciones
puts ciudades

=begin
Tener en cuenta que dentro de un array puedo tener un array en una posicion determinada
para acceder al array dentro del array accedo a la posición y luego al elemtno del array que deseo
puts ciudades [posicion donde esta el array][elemto del array]
=end

#Los hashes son colecciones de pares-valor (clave-valor), la clave normalente es un numero o una cadena de caracteres
#Los hashes no tienen orden, se accede por medio de una clave
#Es posible que un elemento no tenga clave, si trato de acceder a este me bota null

#Crear un hash vacio:
new_hash = Hash.new()

#Crear un hash con valores:
new_hash1 = {"Antioquia" => "Medellin", "Cundinamarca" => "Bogotá", "La guajira" => "Riohacha"}
puts new_hash1["Antioquia"] #Devuelve Medellín
puts new_hash1["Amazonas"] = "Leticia" #agrego elemento con clase amazonas, valor leticia
puts new_hash1["Antioquia"] = "Medellín" #Modifico valor de clave Antioquia por Medellín (la tilde)

valores = {"papa" => 2000, "Huevo" => 400, "Leche" => 3000}
puts valores #imprime el hash
puts valores["papa"] #imprime el valor de la clave papa


#Solución tarea
=begin
1. En Ruby, los arrays y los hashes son estructuras de datos diferentes que se
utilizan en diferentes situaciones según las necesidades del programa.
Aquí algunos escenarios en los que es más conveniente usar arrays y otros en
los que es más conveniente usar hashes:

Arrays:

Cuando se necesita almacenar una colección ordenada de elementos y el orden es importante.
Cuando se desea acceder a los elementos mediante un índice numérico.
Cuando se tiene una lista de elementos que pueden repetirse.
Cuando se necesita realizar operaciones comunes en todos los elementos, como agregar, eliminar o buscar elementos.
Cuando no  se necesita asociar datos específicos con cada elemento.
Ejemplo de uso de arrays:
=end

frutas = ["manzana", "naranja", "plátano"]
frutas[0] # Accede al primer elemento (manzana)
frutas.push("uva") # Agrega un elemento al final
frutas.delete("naranja") # Elimina un elemento

=begin
Hashes:

Cuando se necesita almacenar datos en forma de pares clave-valor.
Cuando se necesita acceder a los elementos por una clave en lugar de un índice numérico.
Cuando se necesita buscar o recuperar valores rápidamente según una clave dada.
Cuando se desea asociar datos específicos con cada elemento.
Ejemplo de uso de hashes:
=end
persona = { "nombre" => "Juan", "edad" => 30, "ciudad" => "Madrid" }
persona["nombre"] # Accede al valor asociado con la clave "nombre" (Juan)
persona["profesion"] = "Ingeniero" # Agrega un nuevo par clave-valor
persona.delete("edad") # Elimina el par clave-valor con la clave "edad"

=begin
En resumen, si se necesita almacenar una colección ordenada de elementos y el
orden es importante, o si solo se necesita acceder a los elementos por su índice
numérico, los arrays son más convenientes. Por otro lado, si se necesita almacenar
datos en forma de pares clave-valor y acceder a los elementos por su clave,
los hashes son más adecuados.

2. En ruby es posible tener hashes como elementos de un array y también es posible
tener arrays como elementos de un hash. Esto se debe a que tanto los arrays como
los hashes son tipos de datos flexibles y pueden contener otros tipos de datos,
incluidos otros hashes y arrays.

Aquí se tienen ejemplos de cómo se puede tener hashes como elementos de un array:
=end
# Array con hashes como elementos
usuarios = [
  { "nombre" => "Juan", "edad" => 30 },
  { "nombre" => "María", "edad" => 25 },
  { "nombre" => "Pedro", "edad" => 35 }
]

usuarios.each do |usuario|
  puts usuario["nombre"]
end
=begin
En el ejemplo anterior, cada elemento del array usuarios es un hash que representa
un usuario con atributos como nombre y edad.

Y aquí se tiene un ejemplo de cómo se puede tener un array como un valor dentro
de un hash:
=end
# Hash con array como valor
persona = {
  "nombre" => "Juan",
  "hobbies" => ["fútbol", "lectura", "pintura"]
}

puts persona["nombre"] # Imprime "Juan"
puts persona["hobbies"][0] # Imprime "fútbol"

=begin
En este caso, el hash persona tiene un valor asociado a la clave "hobbies",
y ese valor es un array que contiene los pasatiempos de la persona.

Estos ejemplos demuestran cómo se puede combinar hashes y arrays en estructuras
de datos más complejas según las necesidades. Ruby brinda flexibilidad para
organizar y estructurar los datos de manera adecuada.

3. Puede un array o un hash ser la llave de otro hash?

En Ruby, los hashes solo pueden tener claves de tipo "no mutable" como símbolos,
cadenas de texto, enteros, entre otros. Los arrays no pueden ser claves
directamente en un hash, ya que son objetos mutables(que cambian) y no se pueden usar como
claves.

Aquí un ejemplo para ilustrar esto:
=end
hash = {
  [1, 2, 3] => "valor" # Esto generaría un error (no imprime nada)
}
=begin
El código anterior produciría un error porque se intenta usar un array
como clave en un hash, lo cual no está permitido.

Sin embargo, se puede utilizar objetos no mutables como claves,
incluidos los hashes. Esto significa que se puede tener un hash como clave de
otro hash. Aquí un ejemplo:
=end
hash_exterior = {
  { "clave" => "valor" } => "valor exterior"
}

puts hash_exterior[{ "clave" => "valor" }] # Imprime "valor exterior"

=begin
En el ejemplo anterior, el hash hash_exterior tiene un hash como clave y
una cadena de texto como valor. Se puede acceder al valor utilizando ese hash
como clave.

En resumen, en Ruby, los hashes pueden tener objetos no mutables como claves,
pero los arrays no pueden ser claves directamente en un hash.

4. Escribir un array que almacene en orden los dominios mas populares de Colombia de
de acuerdo con:
https://radar.cloudflare.com/co

=end
radar_cloudflare = [
  "google.com",
  "googleapis.com",
  "facebook.com",
  "gstatic.com",
  "whatsapp.net",
  "microsoft.com",
  "tiktokcdn.com",
  "googlevideo.com",
  "gvt2.com",
  "instagram.com",
]
=begin
Este array radar_cloudflare contiene los elementos en el orden mencionado en
el Cloudflare Radar.

5. Escribir un hash que almacene los departamentos de colombia con sus
correspondientes capitales
=end
departamentos_colombia = {
  "Amazonas" => "Leticia",
  "Antioquia" => "Medellín",
  "Arauca" => "Arauca",
  "Atlántico" => "Barranquilla",
  "Bolívar" => "Cartagena de Indias",
  "Boyacá" => "Tunja",
  "Caldas" => "Manizales",
  "Caquetá" => "Florencia",
  "Casanare" => "Yopal",
  "Cauca" => "Popayán",
  "Cesar" => "Valledupar",
  "Chocó" => "Quibdó",
  "Córdoba" => "Montería",
  "Cundinamarca" => "Bogotá",
  "Guainía" => "Inírida",
  "Guaviare" => "San José del Guaviare",
  "Huila" => "Neiva",
  "La Guajira" => "Riohacha",
  "Magdalena" => "Santa Marta",
  "Meta" => "Villavicencio",
  "Nariño" => "Pasto",
  "Norte de Santander" => "Cúcuta",
  "Putumayo" => "Mocoa",
  "Quindío" => "Armenia",
  "Risaralda" => "Pereira",
  "San Andrés y Providencia" => "San Andrés",
  "Santander" => "Bucaramanga",
  "Sucre" => "Sincelejo",
  "Tolima" => "Ibagué",
  "Valle del Cauca" => "Cali",
  "Vaupés" => "Mitú",
  "Vichada" => "Puerto Carreño"
}
=begin
En el hash departamentos_colombia, cada departamento de Colombia se representa
como una clave y su capital correspondiente se representa como el valor asociado
a esa clave.

6. Escribir un hash que almacene los sistemas autonomos de colombia siendo sus
codigos la clave y sus nombres el valor de acuerdo con
https://radar.cloudflare.com/co
=end

sistemas_autonomos_colombia = {
  "COLOMBIA TELECOMUNICACIONES S.A. ESP" => "AS3816",
  "EPM Telecomunicaciones S.A. E.S.P." => "AS13489",
  "Telmex Colombia S.A." => "AS10620",
  "ETB - Colombia" => "AS19429",
  "Colombia Movil" => "AS27831"
}
