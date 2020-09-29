require_relative "dog.rb"
require_relative "fish.rb"

dog = Dog.new("Spot", "Beagle")
dog_clone = dog.make_copy

puts "original dog name #{dog.name}"
puts "clone dog name #{dog_clone.name}"
puts "original dog breed #{dog.breed}"
puts "clone dog breed #{dog_clone.breed}"


fish = Fish.new("Nemo", "Clown Fish", true)
fish_clone = fish.make_copy

puts "original fish name #{fish.name}"
puts "clone fish name #{fish_clone.name}"
puts "original fish species #{fish.species}"
puts "clone fish species #{fish_clone.species}"
puts "original fish salt_water #{fish.salt_water}"
puts "clone fish salt_water #{fish_clone.salt_water}"

# OUTPUT
# Dog created
# Dog cloning
# original dog name Spot
# clone dog name Spot
# original dog breed Beagle
# clone dog breed Beagle

# Fish created
# Fish cloning
# original fish name Nemo
# clone fish name Nemo-clone # custom clone logic worked to append -clone to name
# original fish species Clown Fish
# clone fish species Clown Fish
# original fish salt_water true
# clone fish salt_water true