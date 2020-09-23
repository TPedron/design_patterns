require_relative "smart_light_invoker"
require_relative "turn_off_light_command"
require_relative "turn_on_light_command"
require_relative "smart_light_receiver"

smart_light = SmartLightReceiver.new

controller = SmartLightInvoker.new(
    on_command: TurnOnLightCommand.new(smart_light),
    off_command: TurnOffLightCommand.new(smart_light)
)

controller.click_on_button
controller.click_off_button

# OUTPUT
# LIGHT GOES ON
# LIGHT GOES OFF

controller.undo_all_commands

# OUTPUT
# UNDO
# LIGHT GOES ON
# LIGHT GOES OFF

