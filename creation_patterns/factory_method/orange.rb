class Orange # Concrete fruit class
    # Interface (duck typing in ruby)
    # - do_stuff(event)

    def do_stuff(event)
        puts "Orange doing #{event}"
    end
end