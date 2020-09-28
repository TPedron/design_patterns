require_relative "cat.rb"
require_relative "dog.rb"
require_relative "null_animal.rb"

def getAnimal(animal=NullAnimal.new)
    animal
end

puts getAnimal(Cat.new).speak
puts getAnimal(Dog.new).speak
puts getAnimal().speak # null case

# OUTPUT
# MEOW
# BARK
# 