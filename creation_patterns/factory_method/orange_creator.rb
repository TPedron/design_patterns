class OrangeCreator < FruitCreator

    def create_fruit
        return Orange.new
    end

    # Inherits render_fruit() method from FruitCreator

end