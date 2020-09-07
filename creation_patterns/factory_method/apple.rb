class Apple # Concrete fruit class
    # Interface (duck typing in ruby)
    # - do_stuff(event)

    def do_stuff(event)
        puts "Apple doing #{event}"
    end
end