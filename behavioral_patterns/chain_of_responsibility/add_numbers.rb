class AddNumbers
    attr_reader :next_chain

    def set_next_chain(next_chain)
        @next_chain = next_chain
    end

    def calculate(numbers_request)
        if numbers_request.calculation == "ADD"
            puts "#{numbers_request.number_1} + #{numbers_request.number_2} = #{numbers_request.number_1 + numbers_request.number_2}"
        else
            @next_chain.calculate(numbers_request)
        end
    end
end