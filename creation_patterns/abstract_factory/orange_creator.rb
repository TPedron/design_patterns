require_relative 'fruit_creator.rb'
require_relative 'orange.rb'
require_relative 'sorbet.rb'

class OrangeCreator < FruitCreator

    def create_fruit
        return Orange.new
    end

    def create_desert
        return Sorbet.new
    end

    # Inherits make_dessert() method from FruitCreator

end