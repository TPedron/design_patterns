require_relative "fire_fighter.rb"
require_relative "programmer.rb"

fire_fighter = FireFighter.new
programmer = Programmer.new

puts "FIRE FIGHTER ROUTINE"
fire_fighter.routine

puts ""
puts "FIRE FIGHTER ROUTINE"
programmer.routine

# OUTPUT
# FIRE FIGHTER ROUTINE
# Waking up
# Driving to Fire House
# Killing fires
# Leaving firehouse
# Relaxing

# FIRE FIGHTER ROUTINE
# Waking up
# Walking to office
# tacka tacka on keyboard
# Walking home
# Relaxing