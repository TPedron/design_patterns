require_relative 'fruit_creator.rb'
require_relative 'orange.rb'

class OrangeCreator < FruitCreator

    def create_fruit
        return Orange.new
    end

    # Inherits render_fruit() method from FruitCreator

end