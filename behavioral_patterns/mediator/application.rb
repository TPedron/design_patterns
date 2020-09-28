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

puts "STOCKS FOR SALE"
mediator.sell_offers.each do |stock|
    puts "#{stock.symbol} - #{stock.num_shares}"
end

# OUTPUT
# TOM HAS SIGNED UP FOR EXCHANGE
# EXCHANGE RECEIVED REGISTRATION OF COLLEAGUE ["TOM"]
# CARL HAS SIGNED UP FOR EXCHANGE
# EXCHANGE RECEIVED REGISTRATION OF COLLEAGUE ["CARL"]
# 100 shares of MSFT added to inventory
# 50 shares of GOOG added to inventory
# 100 shares of MSFT bought by colleague code TOM
# 10 shares of NRG added to inventory
# 10 shares of NRG bought by colleague code CARL
# STOCKS FOR SALE
# GOOG - 50