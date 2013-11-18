puts "Hashes are a lot like arrays."
puts "They both have a bunch of slots that can point to various objects."

puts "In an array, the slots are lined up in a row. Each slot is numbered."

puts "In a hash, you can use any object to refer to a slot."
puts "That object is known as the key."

puts "The literal constructor for a hash is {}."

dictionary = {
  "hello" => "hola", # The => hash rocket is used to assign values to keys
  "name" => "nombre",
  "one" => "uno"
}

dictionary["hola"] #=> "hola"
dictionary["one"] #=> uno

puts "'dictionary' is a hash that stores english to spanish translations."
puts "If we put that data into an array, how would we know individual translations?"

# bad_dictionary = ["hello", "hola", "one", "uno", "name", "nombre"]

puts "Using the same bracket notation '[index]' we can access a slot's value."

puts dictionary["hello"]

puts "The string 'hello' is the key whose value we want to return."
puts "A key is like the slots name."
puts "It's how we refer to the value in that position."

puts "And just like an array, you can also assign a value to a slot"
puts "using the []= method. If the key does not exist, it will be created"

dictionary["yes"] = "si"

vending_machines = {
  "a1" => "Twix",
  :a2 => "Baby Ruth",
  :a3 => "Kit Kat",
  :b1 => "Shake Shack",
  :b2 => "In and Out Burger"
}

vending_machines["a1"]
vending_machine[:b3] = "Soda"
