require_relative 'duck.rb'
require_relative 'robot_duck.rb'
require_relative 'rubber_duck.rb'

basic_duck = Duck.new
basic_duck.display
basic_duck.fly
basic_duck.swim
basic_duck.quack

robo_duck = RobotDuck.new
robo_duck.display
robo_duck.fly
robo_duck.swim
robo_duck.quack

rubber_duck = RubberDuck.new
rubber_duck.display
rubber_duck.fly
rubber_duck.swim
rubber_duck.quack

# OUTPUT
# I am a Duck
# Moving at 1km/hr
# Floating in water
# QUACK
# I am a robot duck
# Moving at 99999km/hr
# Cannot swim
# QUACK
# I am a rubber duck
# Moving at 0km/hr
# Floating in water
# SQUEAKY QUAAAACK
