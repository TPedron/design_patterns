require_relative 'fruit_creator.rb'
require_relative 'apple.rb'

class AppleCreator < FruitCreator

    def create_fruit
        return Apple.new
    end

    # Inherits render_fruit() method from FruitCreator
end