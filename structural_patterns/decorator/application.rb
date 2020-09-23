require_relative "coffee.rb"
require_relative "milk_decorator.rb"
require_relative "sugar_decorator.rb"
require_relative "flavor_shot_decorator.rb"

# Create concrete base drink
coffee = Coffee.new

# Add ingredient wrappers
coffee_1m = MilkDecorator.new(coffee)
coffee_2m = MilkDecorator.new(coffee_1m)
coffee_2m_1fv = FlavorShotDecorator.new(coffee_2m)
coffee_2m_1fv_1s = SugarDecorator.new(coffee_2m_1fv)

# What is my final drink?
puts coffee_2m_1fv_1s.cost
puts coffee_2m_1fv_1s.description

# OUTPUT
# 3.85
# Coffee - Milk - Milk - Flavor Shot - Sugar
