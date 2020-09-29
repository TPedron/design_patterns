require_relative "flyweight.rb"

class FlyweightFactory
    def initialize(initial_flyweights)
        @flyweights = {}
        initial_flyweights.each do |state|
            add_flyweight(get_key(state), state)
        end
    end

    def get_flyweight(shared_state)
        key = get_key(shared_state)
        
        # ADD FLYWEIGHT IF MISSING
        add_flyweight(key, shared_state) unless @flyweights.key?(key)

        @flyweights[key]
    end

    def list_flyweights
        puts "CURRENTLY WE HAVE #{@flyweights.size} FLYWEIGHTS REGISTERED"
        pp @flyweights.keys
    end

    private

    def add_flyweight(key, state)
        @flyweights[key] = Flyweight.new(state)
    end
    
    def get_key(state)
        state.sort.join('_') # example: cx3_grey_mazda
    end
end