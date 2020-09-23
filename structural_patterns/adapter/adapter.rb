class Adapter
    # INTERFACE
    # - request

    attr_accessor :target

    def initialize(target:)
        @target = target
    end

    def request
        puts "MAPPING REQUEST TO TARGET"
        target.specific_request
    end

end