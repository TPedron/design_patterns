require_relative "stock_offer.rb"

class StockMediator
    attr_reader :colleagues, :buy_offers, :sell_offers

    def initialize()
        @colleagues = {}
        @buy_offers = []
        @sell_offers = []
    end

    def add_colleague(colleague)
        puts "EXCHANGE RECEIVED REGISTRATION OF COLLEAGUE #{[colleague.colleague_code]}"
        colleagues[colleague.colleague_code] = colleague
    end

    def sale_offer(stock_symbol, num_shares, colleague_code)
        sold = false

        buy_offers.each do |offer|
            if offer.symbol == stock_symbol && offer.num_shares == num_shares
                puts "#{num_shares} shares of #{stock_symbol} sold to colleague code #{offer.colleague_code}"
                buy_offers.delete(offer)
                sold = true

            end

            break if sold == true
        end

        if !sold
            puts "#{num_shares} shares of #{stock_symbol} added to inventory"
            sell_offers << StockOffer.new(num_shares, stock_symbol, colleague_code)
        end
    end

    def buy_offer(stock_symbol, num_shares, colleague_code)
        bought = false

        sell_offers.each do |offer|
            if offer.symbol == stock_symbol && offer.num_shares == num_shares
                puts "#{num_shares} shares of #{stock_symbol} bought by colleague code #{offer.colleague_code}"
                sell_offers.delete(offer)
                bought = true

            end

            break if bought == true
        end

        if !bought
            puts "#{num_shares} shares of #{stock_symbol} added to inventory"
            buy_offers << StockOffer.new(num_shares, stock_symbol, colleague_code)
        end
    end
end