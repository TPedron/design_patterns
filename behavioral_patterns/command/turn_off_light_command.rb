class TurnOffLightCommand
    # INTERFACE
    # - execute
    # - undo (un-execute)

    attr_accessor :light

    def initialize(light)
        @light = light
    end

    def execute
        light.off
    end

    def undo
        light.on
    end
end