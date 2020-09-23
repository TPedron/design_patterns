require_relative "adapter.rb"
require_relative "adaptee.rb"

adapter = Adapter.new(target: Adaptee.new)
adapter.request # to be mapped to adaptee.specific_request method

# OUTPUT
# MAPPING REQUEST TO TARGET
# SPECIFIC REQUEST