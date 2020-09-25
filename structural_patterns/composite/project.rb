class Project

    def initialize(text, todos)
        @text = text
        @todos = todos
    end

    def get_html # this method makes up the Component Interface shared with Todo
        puts "<ul>"
            puts "<li>#{@text}"
                puts "<ul>"
                    @todos.each do |todo|
                        todo.get_html
                    end
                puts "</ul>"
            puts "</il>"
        puts "</ul>"
    end

    def add_todo(todo)
        @todos << todo
    end

    def delete_todo(todo)
        @todos.delete(todo)
    end

    def get_todos
        @todos
    end

end