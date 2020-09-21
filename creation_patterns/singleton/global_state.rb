class GlobalState
    @instance = new

    private_class_method :new
    
    def self.instance
        @instance
    end

    def score
        87
    end
end