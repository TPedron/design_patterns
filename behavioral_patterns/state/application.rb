require_relative "gate_context.rb"

gate = GateContext.new

gate.enter # fails since it is locked
gate.pay_failed # stays locked
gate.enter # fails since it is locked
gate.pay # payment succeeds and calls pay_ok, becomes open
gate.pay # will fail as its already open
gate.pay_ok # will fail as its already open
gate.pay_failed # will fail as its already open
gate.enter # works, locks gate
gate.enter # fails as gate is locked gain


### OUTPUT

# INVALID, GATE IS CLOSED
# PAYMENT FAILED
# INVALID, GATE IS CLOSED
# INITIATING PAYMENT PROCESS
# PAYMENT OK
# INVALID, GATE IS OPEN
# INVALID, GATE IS OPEN
# INVALID, GATE IS OPEN
# CUSTOMER HAS ENTERED, LOCK GATE AGAIN
# INVALID, GATE IS CLOSED