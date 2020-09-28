class Colleague # abstract class not to be instantiated
    attr_reader :mediator, :colleague_code

    def initialize(mediator, colleague_code)
        @mediator = mediator
        @colleague_code = colleague_code

        @mediator.add_colleague(self)
    end

    def sale_offer(stock, num_shares)
        @mediator.sale_offer(stock, num_shares, colleague_code)
    end

    def buy_offer(stock, num_shares)
        @mediator.buy_offer(stock, num_shares, colleague_code)
    end
end