class FruitCreator

    # Declares factory method that returns new objects
    def create_fruit()
        # not implemented in FruitCreator, to be implemented in
        # concrete creators Apple/OrangeCreator classes.
    end

    # core business method on based creator class
    # not implemented in apple/orange sub creator classes
    # could be overridden in a creator subclass if needed
    def render_fruit()
        fruit = create_fruit()

        fruit.do_stuff('grow-on-tree')
    end
end