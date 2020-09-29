class Caretaker

    def initialize
        @saved_mementos = []
    end

    def add_memento(memento)
        @saved_mementos << memento
    end

    def get_memento(idx)
        @saved_mementos[idx-1]
    end
end