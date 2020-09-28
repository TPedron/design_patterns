class RoomIterator

    def initialize(rooms)
        @rooms = rooms
        @current_room_idx = -1
    end

    def has_next?
        @rooms.size > @current_room_idx + 1
    end

    def next
        @current_room_idx+=1
        @rooms[@current_room_idx]
    end

end