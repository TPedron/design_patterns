require_relative 'apple_creator.rb'
require_relative 'orange_creator.rb'

class FruitApplication
    attr_accessor :fruit

    def initialize(fruit_type)
        if fruit_type == 'apple'
            @fruit = AppleCreator.new
        elsif fruit_type == 'orange'
            @fruit = ::OrangeCreator.new
        # elsif fruit_type == 'banana' # COULD EASILY ADD
        #     @fruit = BananaCreator.new
        else
            # raise an error
        end
    end

    def perform()
        fruit.make_dessert()
    end

end

# run application 
application = FruitApplication.new('apple')
application.perform()
application = FruitApplication.new('orange')
application.perform()

# OUTPUT
# Make a tasty Apple Pie!
# Make a tasty Orange Sorbet!
