require_relative "closed_gate_state.rb"

class OpenGateState

    def initialize(gate)
        @gate = gate
    end

    # below is the gate state interface that the context delegates to
    def enter
        puts "CUSTOMER HAS ENTERED, LOCK GATE AGAIN"
        @gate.change_state(ClosedGateState.new(@gate))
    end

    def pay
        puts "INVALID, GATE IS OPEN"
    end

    def pay_ok
        puts "INVALID, GATE IS OPEN"
    end

    def pay_failed
        puts "INVALID, GATE IS OPEN"
    end

end