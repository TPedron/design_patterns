class WindowIterator

    def initialize(windows)
        @windows = windows
        @current_window_idx = -1
    end

    def has_next?
        @windows.size > @current_window_idx + 1
    end

    def next
        @current_window_idx+=1
        @windows[@current_window_idx]
    end

end