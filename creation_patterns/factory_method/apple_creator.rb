class AppleCreator < FruitCreator

    def create_fruit
        return Apple.new
    end

    # Inherits render_fruit() method from FruitCreator
end