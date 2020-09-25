require_relative "worker.rb"

class Programmer < Worker

    def go_to_work # VARIANT
        puts "Walking to office"
    end

    def work # VARIANT
        puts "tacka tacka on keyboard"
    end

    def go_home # VARIANT
        puts "Walking home"
    end
end