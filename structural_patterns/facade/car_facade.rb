require_relative "gps.rb"
require_relative "radio.rb"
require_relative "light.rb"
require_relative "engine.rb"

class CarFacade
    def initialize
        @engine = Engine.new
        @radio = Radio.new
        @light = Light.new
        @gps = Gps.new
    end

    def turn_the_key
        puts "Turning car on!"
        @engine.turn_on
        @light.head_lights_on
        @light.dashboard_lights_on
        @radio.play_music
        @gps.navigate
    end
end