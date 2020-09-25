
require_relative "project.rb"
require_relative "todo.rb"

todo1 = Todo.new("Finish work task 1")
todo2 = Todo.new("Finish work task 2")
project1 = Project.new("Work Tasks", [todo1, todo2])

todo3 = Todo.new("Do dishes")
todo4 = Todo.new("Watch TV")

project2 = Project.new("Home Tasks", [todo3, todo4])

todolist = Project.new("TODO List", [project1, project2])

todolist.get_html

# OUTPUT: structural_patterns/composite/todolist.html