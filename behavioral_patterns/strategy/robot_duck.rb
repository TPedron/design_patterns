require_relative 'duck.rb'
require_relative 'no_swim.rb'
require_relative 'jet_fly.rb'

class RobotDuck < Duck

    def display
        puts "I am a robot duck"
    end

    def swim()
        NoSwim.new.swim()
    end

    def fly()
        JetFly.new.fly()
    end
end