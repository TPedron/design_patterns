class Worker
    def routine # template method
        get_up # implemented
        go_to_work # variant in subclass
        work # variant in subclass
        go_home # variant in subclass
        relax # implemented
    end

    def get_up # INVARIANT
        puts "Waking up"
    end

    def go_to_work # VARIANT
        puts "NOT IMPLEMENTED"
    end

    def work # VARIANT
        puts "NOT IMPLEMENTED"
    end

    def go_home # VARIANT
        puts "NOT IMPLEMENTED"
    end

    def relax # INVARIANT
        puts "Relaxing"
    end
end