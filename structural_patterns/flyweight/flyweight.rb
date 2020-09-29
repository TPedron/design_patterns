class Flyweight
    def initialize(shared_state)
        @shared_state = shared_state
    end

    def operation(unique_state)
        pp @shared_state + unique_state
    end
end