require_relative "add_on_decorator.rb"

class SugarDecorator < AddOnDecorator

    def cost
        beverage.cost + 0.1
    end

    def description
        "#{beverage.description} - Sugar"
    end
end