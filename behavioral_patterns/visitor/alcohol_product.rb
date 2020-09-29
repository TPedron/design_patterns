class AlcoholProduct
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def accept(visitor) # visitable interface method
        return visitor.visit(self)
    end
end