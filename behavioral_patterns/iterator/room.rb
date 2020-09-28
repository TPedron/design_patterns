require_relative "window_iterator.rb"

class Room # Window Collection
    attr_reader :windows, :name

    def initialize(name, windows = [])
        @name = name
        @windows = windows
    end

    def get_window_iterator
        WindowIterator.new(windows)
    end
end