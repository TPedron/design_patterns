require_relative "add_on_decorator.rb"

class MilkDecorator < AddOnDecorator

    def cost
        beverage.cost + 0.25
    end

    def description
        "#{beverage.description} - Milk"
    end
end