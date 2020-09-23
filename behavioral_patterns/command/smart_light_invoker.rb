class SmartLightInvoker

    def initialize(on_command:, off_command:)
        @on_command = on_command
        @off_command = off_command

        @commands_history = []
    end

    def click_on_button
        @on_command.execute
        @commands_history << @on_command
    end

    def click_off_button
        @off_command.execute
        @commands_history << @off_command
    end

    def undo_all_commands
        puts "UNDO"
        @commands_history.reverse.each do |command|
            command.undo
        end
        @commands_history = [] # clear history
    end
end