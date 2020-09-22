class FruitCreator

    # Declares factory method that returns new objects
    def create_fruit()
        # not implemented in FruitCreator, to be implemented in
        # concrete creators Apple/OrangeCreator classes.
    end

    # core business method on based creator class
    # not implemented in apple/orange sub creator classes
    # could be overridden in a creator subclass if needed
    def make_dessert()
        fruit = create_fruit()
        desert = create_desert()
        puts "Make a tasty #{fruit.name} #{desert.name}!"
    end
end