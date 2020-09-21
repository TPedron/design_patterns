require_relative 'duck.rb'
require_relative 'no_fly.rb'
require_relative 'no_swim.rb'
require_relative 'squeaky_quack.rb'

class RubberDuck < Duck

    def display
        puts "I am a rubber duck"
    end

    def fly
        NoFly.new.fly
    end

    def quack
        SqueakyQuack.new.quack
    end

    def sqim
        NoSwim.new.swim() # Same as robot duck
    end
end