require_relative "stock_mediator.rb"
require_relative "stock_buyer_tom.rb"
require_relative "stock_buyer_carl.rb"


mediator = StockMediator.new

tom = StockBuyerTom.new(mediator)

carl = StockBuyerCarl.new(mediator)

tom.sale_offer("MSFT", 100)
tom.sale_offer("GOOG", 50)

carl.buy_offer("MSFT", 100)
carl.sale_offer("NRG", 10)

tom.buy_offer("NRG", 10)

puts "STOCK FOR SALE"
mediator.sell_offers.each do |stock|
    puts "#{stock.symbol} - #{stock.num_shares}"
end

