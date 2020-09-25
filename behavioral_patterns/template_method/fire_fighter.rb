require_relative "worker.rb"

class FireFighter < Worker

    def go_to_work # VARIANT
        puts "Driving to Fire House"
    end

    def work # VARIANT
        puts "Killing fires"
    end

    def go_home # VARIANT
        puts "Leaving firehouse"
    end
end