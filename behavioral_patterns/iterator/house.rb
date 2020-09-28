
require_relative "floor_iterator.rb"

class House # Floor Collection
    attr_reader :floors

    def initialize(floors=[])
        @floors = floors
    end

    def get_floor_iterator
        FloorIterator.new(floors)
    end
end