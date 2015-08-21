require_relative 'config/application'
require_relative 'app/controllers/todo_controller'
puts "Put your application code in #{File.expand_path(__FILE__)}"

input = ARGV

if input[0] == "list"
  TodoController.list

elsif input[0] == "add"
  TodoController.add(input[1..-1].join(" "))

elsif input[0] == "delete"
  TodoController.delete(input[1].to_i)

else input[0] == "done"
  TodoController.done(input[1].to_i)
end