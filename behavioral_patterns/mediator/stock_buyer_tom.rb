require_relative "colleague.rb"

class StockBuyerTom < Colleague
    def initialize(mediator)
        puts "TOM HAS SIGNED UP FOR EXCHANGE"
        super(mediator, "TOM")
    end
end