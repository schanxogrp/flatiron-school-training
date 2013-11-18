name = "Sze"
puts name

def say_hello
	puts "hello"
end

say_hello

def say_hello(name)
    puts "Hello #{name}"
end
say_hello "Matz"

def say_hello(*names)
    names.each do |name| 
      puts "Hello #{name}!"
    end
end

say_hello "Alice","Bob"