class TurnOnLightCommand
    # INTERFACE
    # - execute
    # - undo (un-execute)

    attr_accessor :light

    def initialize(light)
        @light = light
    end

    def execute
        light.on
    end

    def undo
        light.off
    end
end