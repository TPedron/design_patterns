require_relative('basic_quack.rb')
require_relative('slow_fly.rb')
require_relative('slow_swim.rb')

class Duck

    def quack()
        BasicQuack.new.quack()
    end

    def display()
        puts "I am a Duck"
    end

    def fly()
        SlowFly.new.fly()
    end

    def swim()
        SlowSwim.new.swim()
    end
end