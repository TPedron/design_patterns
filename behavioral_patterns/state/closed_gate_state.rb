require_relative "open_gate_state.rb"

class ClosedGateState

    def initialize(gate)
        @gate = gate
    end

    # below is the gate state interface that the context delegates to
    def enter
        puts "INVALID, GATE IS CLOSED"
    end

    def pay
        puts "INITIATING PAYMENT PROCESS"
        # initiates a payment process that will return sucess or failure
        # for simplicity, just assume payment succeeds
        @gate.pay_ok
    end

    def pay_ok
        puts "PAYMENT OK"
        @gate.change_state(OpenGateState.new(@gate))
    end

    def pay_failed
        puts "PAYMENT FAILED"
    end
end