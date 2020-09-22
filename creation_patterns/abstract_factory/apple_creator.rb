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

    # Inherits make_dessert() method from FruitCreator
end