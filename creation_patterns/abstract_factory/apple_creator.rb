require_relative 'fruit_creator.rb'
require_relative 'apple.rb'
require_relative 'pie.rb'

class AppleCreator < FruitCreator

    def create_fruit
        return Apple.new
    end

    def create_desert()
        return Pie.new
    end

    # Inherits render_fruit() method from FruitCreator
end