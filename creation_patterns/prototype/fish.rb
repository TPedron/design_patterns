class Fish
    attr_accessor :name
    attr_reader :species, :salt_water

    def initialize(name, species, salt_water)
        puts "Fish created"
        @name = name
        @species = species
        @salt_water = salt_water
    end

    def make_copy # animal interface
        puts "Fish cloning"

        new_fish = deep_copy(self)
        new_fish.name = "#{new_fish.name}-clone" # custom cloning logic for Fish

        new_fish
    end

    private

    def deep_copy(object)
        Marshal.load(Marshal.dump(object))
    end
end