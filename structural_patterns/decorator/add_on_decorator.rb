require_relative "beverage.rb"

class AddOnDecorator < Beverage

    attr_accessor :beverage

    def initialize(beverage)
        @beverage = beverage
    end

    # subclasses will implement cost and name methods
end