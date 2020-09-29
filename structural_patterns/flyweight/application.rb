require_relative "flyweight_factory.rb"

def add_car_to_database(factory, plates, owner, brand, model, color)
    puts "ADD CAR"
    flyweight = factory.get_flyweight([brand, model, color]) # shared state fields
    flyweight.operation([plates, owner]) # unique state fields
end

factory = FlyweightFactory.new(
    [ # each element is in format [branch, model, color]
        ['mazda', 'cx3', 'grey'],
        ['chevrolet', 'cobalt', 'black'],
        ['ford', 'explorer', 'blue']
    ]
)

factory.list_flyweights

add_car_to_database(factory, "ABC123", "Tom", "mazda", "cx3", "grey") # has matching flyweight
add_car_to_database(factory, "DEF456", "Carl", "mazda", "3", "blue") # does not have matching flyweight

factory.list_flyweights

## OUTPUT
# ["cx3_grey_mazda", "black_chevrolet_cobalt", "blue_explorer_ford"]
# ADD CAR
# ["mazda", "cx3", "grey", "ABC123", "Tom"]
# ADD CAR
# ["mazda", "3", "blue", "DEF456", "Carl"]
# CURRENTLY WE HAVE 4 FLYWEIGHTS REGISTERED
# ["cx3_grey_mazda",
#  "black_chevrolet_cobalt",
#  "blue_explorer_ford",
#  "3_blue_mazda"]