require_relative '../../config/application'
require_relative '../models/task'
require_relative '../models/list'

class TodoController < ActiveRecord::Base

  def self.list
    all_tasks = Task.all
    all_tasks.each do |task|
      if task.status != true
        puts "#{task.id}:" + " " + "#{task.details}"
      else
        puts "#{task.id}:" + " " + "#{task.details}" + "(THIS IS DONE!)"
      end
    end
  end

  def self.add(description)
    new_task = Task.create!(details: description, status: false)
    puts "you've created a new task to #{new_task.details}."
  end

  def self.delete(id)
    task = Task.find(id).destroy
    puts "You've deleted #{deleted_task.name} from your lists. Lazy much?"
  end

  def self.done(id)
    task = Task.find(id)
    task.status = true
    task.save!
    puts "Good job, on to the next one!"
  end

end

if input[0] == "list"
my_list = TasksController.list 

elsif input[0] == "add"
  my_list.add(input[1..-1])


elsif input[0] == "delete"
  my_list.delete(input[1].to_i)

else input[0] == "done"
  my_list.done(input[1].to_i)
end

