require_relative "colleague.rb"

class StockBuyerCarl < Colleague
    def initialize(mediator)
        puts "CARL HAS SIGNED UP FOR EXCHANGE"
        super(mediator, "CARL")
    end
end