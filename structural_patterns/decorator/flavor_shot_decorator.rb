require_relative "add_on_decorator.rb"

class FlavorShotDecorator < AddOnDecorator

    def cost
        beverage.cost + 0.75
    end

    def description
        "#{beverage.description} - Flavor Shot"
    end
end