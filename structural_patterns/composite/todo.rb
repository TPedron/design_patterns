class Todo
    def initialize(text)
        @text = text
    end

    def get_html # this method makes up the Component Interface shared with Project
        puts "<li>#{@text}</li>"
    end

end