class StockOffer
    attr_reader :num_shares, :symbol, :colleague_code

    def initialize(num_shares, symbol, colleague_code)
        @num_shares = num_shares
        @symbol = symbol
        @colleague_code = colleague_code
    end
end