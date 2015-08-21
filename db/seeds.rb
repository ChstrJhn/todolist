require 'faker'
require_relative '../app/models/list'
require_relative '../app/models/task'

fridays_list = List.create(title: "Friday's List")

10.times do
  Task.create(details: Faker::Lorem.sentence, status: false)
end