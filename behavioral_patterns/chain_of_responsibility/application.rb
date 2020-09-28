require_relative "numbers_request.rb"
require_relative "add_numbers.rb"
require_relative "subtract_numbers.rb"
require_relative "multiply_numbers.rb"
require_relative "divide_numbers.rb"

chain_calc_1 = AddNumbers.new
chain_calc_2 = SubtractNumbers.new
chain_calc_3 = MultiplyNumbers.new
chain_calc_4 = DivideNumbers.new

chain_calc_1.set_next_chain(chain_calc_2)
chain_calc_2.set_next_chain(chain_calc_3)
chain_calc_3.set_next_chain(chain_calc_4)

numbers_request_1 = NumbersRequest.new(4, 2, "MULTIPLY")
chain_calc_1.calculate(numbers_request_1)

numbers_request_2 = NumbersRequest.new(5, 2, "MODULUS")
chain_calc_1.calculate(numbers_request_2)

# OUTPUT
# 4 * 2 = 8
# ONLY WORKS FOR ADD, SUBTRACT, MULTIPLY AND DIVIDE