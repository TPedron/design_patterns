require_relative "tax_visitor.rb"
require_relative "basic_product.rb"
require_relative "alcohol_product.rb"

milk = BasicProduct.new("Milk", 3.25)
beer = AlcoholProduct.new("Beer", 10.75)

tax_calc = TaxVisitor.new

puts "Milk price = #{milk.price} + tax = #{milk.accept(tax_calc)}"
puts "Beer price = #{beer.price} + tax = #{beer.accept(tax_calc)}"

# OUTPUT
# Milk price = 3.25 + tax = 3.6724999999999994 # didn't bother rounding to 2 digits
# Beer price = 10.75 + tax = 12.147499999999999