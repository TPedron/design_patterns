class FloorIterator
    attr_reader :floors

    def initialize(floors)
        @floors = floors
        @current_floor_idx = -1
    end

    def has_next?
        floors.size > @current_floor_idx + 1
    end

    def next
        @current_floor_idx+=1
        floors[@current_floor_idx]
    end
end