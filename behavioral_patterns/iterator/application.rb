require_relative "floor.rb"
require_relative "house.rb"
require_relative "room.rb"
require_relative "window.rb"

# construct windows
basement_window_1 = Window.new
kitchen_window_1 = Window.new
kitchen_window_2 = Window.new
living_room_window_1 = Window.new
living_room_window_2 = Window.new
living_room_window_3 = Window.new
master_bedroom_window_1 = Window.new
master_bedroom_window_2 = Window.new
master_bedroom_window_3 = Window.new
guest_bedroom_window_1 = Window.new
guest_bedroom_window_2 = Window.new

# construct rooms
basement_room = Room.new("Man Cave", [basement_window_1])
kitchen_room = Room.new("Kitchen", [kitchen_window_1, kitchen_window_2])
living_room = Room.new("Living Room", [living_room_window_1, living_room_window_2, living_room_window_3])
master_bedroom = Room.new("Master Bedroom", [master_bedroom_window_1, master_bedroom_window_2, master_bedroom_window_3])
guest_bedroom = Room.new("Guest Bedroom", [guest_bedroom_window_1, guest_bedroom_window_2])

# construct floors
basement_floor = Floor.new("Basement Floor", [basement_room])
main_floor = Floor.new("Main Floor", [kitchen_room, living_room])
second_floor = Floor.new("Second Floor", [master_bedroom, guest_bedroom])

# construct house
house = House.new([basement_floor, main_floor, second_floor])

# iterate through to get windows
floor_iterator = house.get_floor_iterator
while floor_iterator.has_next? do
    curr_floor = floor_iterator.next
    puts curr_floor.name
    room_iterator = curr_floor.get_room_iterator
    while room_iterator.has_next? do
        curr_room = room_iterator.next
        puts "---- #{curr_room.name}"
        window_iterator = curr_room.get_window_iterator
        while window_iterator.has_next? do
            curr_window = window_iterator.next
            puts "-------- Opening Window"
            curr_window.open
        end
    end
end

### OUTPUT
# Basement Floor
# ---- Man Cave
# -------- Opening Window
# Main Floor
# ---- Kitchen
# -------- Opening Window
# -------- Opening Window
# ---- Living Room
# -------- Opening Window
# -------- Opening Window
# -------- Opening Window
# Second Floor
# ---- Master Bedroom
# -------- Opening Window
# -------- Opening Window
# -------- Opening Window
# ---- Guest Bedroom
# -------- Opening Window
# -------- Opening Window