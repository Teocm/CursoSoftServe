#Operadores en ruby: +, -, *, /, %, **(exponent)
#Operadores de comparación: ==, !=, < >, ===
#Operadores de asignación: =, +=(suma valor de la derecha), -=, /=, %=, **=
#Operadores logicos: and, or, &&, !, not
#Operador ternario: ?:(es una expresion condicional)
#Operadores de rango: -, -- ej:1-10, 1..10, 1...10(no incluye el ultimo numero)

#Operadores condicionales:
edad = 25
if edad >= 15 then
  puts "mayor o igual de 15"
else
  puts "menor de 15"
end

puts "Hola" if 25<32 #imprime Hola

puts "Hola" unless 25<32 #imprime Hola


edad = 15
case edad
when 0..5 #rangos
  puts "bebé"
when 5..10
  puts "niño"
when 10..20
  puts "Adolescente"
when 20..30
  puts "joven"
when 30..40
  puts "viejo"
end
#Imprime Adolescente

#While: while [condition] do
 #instrucciones
#end

i=0
while i<10
  puts i
  i += 1
end


i=0
until i==10
  puts i
  i += 1
end

#Ambos codigos imprimir lo mismo, el untis imprime "hasta"

#for: for object in
      #expression [do]
        #code
      #end

for i in 0..9
  puts i
end

for i in 0...10
  puts i
end
#Imprimen lo mismo de los ciclos de arriba, se le da el rango

=begin
Tarea5:
1. What are break and next instructions used for, and within which
statements? in ruby

In Ruby, the break and next instructions are used for control flow within loops and iterations. They are primarily used within the while, until, for, and loop statements.

break:
The break instruction is used to terminate the execution of a loop or
iteration prematurely. When encountered, it immediately exits the loop
and continues execution with the next line of code after the loop.
It is commonly used to exit a loop when a certain condition is met.
for example:
=end

i = 0
while i < 10
  puts i
  i += 1
  break if i == 5
end

=begin
In this example, the loop will print numbers from 0 to 4 because the
break statement is encountered when i becomes 5. As a result, the loop
is terminated, and the execution continues after the loop.

next:
The next instruction is used to skip the rest of the current iteration
and move on to the next iteration of the loop. When next is encountered,
it immediately jumps to the next iteration without executing any
remaining code within the current iteration.
=end

for i in 0..5
  next if i == 2
  puts i
end

=begin
In this example, the loop will print numbers from 0 to 5, excluding 2.
When i is 2, the next statement is encountered, and it skips the
execution of puts i. The loop then proceeds to the next iteration.

What are these iterators for? Write a simple example of each of them:
a. Each iterator
b. Times iterator
c. Collect iterator

In Ruby, iterators are used to iterate over a collection or perform a
specific action a certain number of times. Here are examples of each
of the three iterators mentioned:

a. each iterator:
The each iterator is used to iterate over elements in a collection
such as an array or a hash. It allows you to perform an action on
each element individually.

Example using each iterator with an array:
=end
fruits = ["apple", "banana", "orange"]

fruits.each do |fruit|
  puts "I love #{fruit}s!"
end
=begin
Salidas: I love apples!, I love bananas!, I love oranges!

In this example, the each iterator iterates over each element in the
fruits array. The block of code within the do...end is executed for
each element, and the current element is accessible through the
fruit variable.

b. times iterator:
The times iterator is used to execute a block of code a specific number of
times. It is handy when you need to repeat an action a known number of times.

Example using times iterator:
=end
5.times do |index|
  puts "Iteration number: #{index + 1}"
end
=begin
salidas:
Iteration number: 1
Iteration number: 2
Iteration number: 3
Iteration number: 4
Iteration number: 5

In this example, the times iterator executes the block of code five times.
The index variable represents the current iteration, starting from 0.

c. collect iterator (also known as map):
The collect or map iterator is used to transform each element of a collection
and collect the results into a new array. It performs an action on each
element and returns a new array with the modified elements.

Example using collect iterator:
=end
numbers = [1, 2, 3, 4, 5]

squared_numbers = numbers.collect do |number|
  number ** 2
end

puts squared_numbers.inspect
=begin
salidas:
[1, 4, 9, 16, 25]

In this example, the collect iterator transforms each element in the numbers
array by squaring it. The resulting squared numbers are collected into a new
array assigned to the squared_numbers variable.

Note that the collect iterator can also be written as map. They are aliases
and can be used interchangeably in Ruby.

Write a program that prints the numbers between 1 and 100.
=end
(1..100).each do |number|
  puts number
end
=begin
Write a program that prints the factorial of a given number.
=end
def factorial(number)
  if number < 0
    puts "Factorial is not defined for negative numbers."
  elsif number == 0 || number == 1
    puts "Factorial of #{number} is 1."
  else
    factorial = 1
    for i in 1..number
      factorial *= i
    end
    puts "Factorial of #{number} is #{factorial}."
  end
end

# Example usage:
factorial(5)
=begin
Write a program that iterates over a string (paragraph) and prints:
1. The shortest word.
2. The longest work.
3. The palindromes present in the paragraph.
=end
def find_shortest_word(paragraph)
  words = paragraph.split(' ')
  shortest_word = words.min_by { |word| word.length }
  puts "Shortest word: #{shortest_word}"
end

def find_longest_word(paragraph)
  words = paragraph.split(' ')
  longest_word = words.max_by { |word| word.length }
  puts "Longest word: #{longest_word}"
end

def find_palindromes(paragraph)
  words = paragraph.split(' ')
  palindromes = words.select { |word| word.downcase == word.downcase.reverse }
  puts "Palindromes: #{palindromes.join(', ')}"
end

# Example usage:
paragraph = "Ruby is a language that is interesting"
find_shortest_word(paragraph)
find_longest_word(paragraph)
find_palindromes(paragraph)
