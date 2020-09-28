require_relative "room_iterator.rb"

class Floor # Room Collection
    attr_reader :rooms, :name

    def initialize(name, rooms = [])
        @name = name
        @rooms = rooms
    end

    def get_room_iterator
        RoomIterator.new(rooms)
    end

end