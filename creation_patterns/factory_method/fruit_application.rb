class FruitApplication
    attr_accessor :fruit

    def initialize(fruit_type)
        if fruit_type == 'apple'
            fruit = AppleCreator.new
        elsif fruit_type == 'orange'
            fruit = OrangeCreator.new
        # elsif fruit_type == 'banana' # COULD EASILY ADD
        #     fruit = BananaCreator.new
        else
            # raise an error
        end
    end

    def perform()
        fruit.render_fruit()
    end

end

# run application 
application = FruitApplication.new('apple')

application.perform()
# expect 'Apple doing grow-on-tree' to print