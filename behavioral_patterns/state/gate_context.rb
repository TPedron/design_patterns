require_relative "closed_gate_state.rb"

class GateContext

    def initialize()
        @gate_state = ClosedGateState.new(self) #default
    end

    # methods below delegate to the current state
    def enter
        @gate_state.enter
    end

    def pay
        @gate_state.pay
    end

    def pay_ok
        @gate_state.pay_ok
    end

    def pay_failed
        @gate_state.pay_failed
    end

    def change_state(new_state)
        @gate_state = new_state
    end

end