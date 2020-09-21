require_relative 'global_state.rb'

# Cannot do GlobalState.new, must do .instance through class method
puts GlobalState.instance.score
# 87 prints out