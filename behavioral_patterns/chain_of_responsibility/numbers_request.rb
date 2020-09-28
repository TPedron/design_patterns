class NumbersRequest
    attr_reader :number_1, :number_2, :calculation
    def initialize(number_1, number_2, calculation)
        @number_1 = number_1
        @number_2 = number_2
        @calculation = calculation
    end
end