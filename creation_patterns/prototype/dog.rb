class Dog
    attr_reader :name, :breed

    def initialize(name, breed)
        puts "Dog created"
        @name = name
        @breed = breed
    end

    def make_copy # animal interface
        puts "Dog cloning"

        deep_copy(self) # simple clone logic
    end

    private

    def deep_copy(object)
        Marshal.load(Marshal.dump(object))
    end
end