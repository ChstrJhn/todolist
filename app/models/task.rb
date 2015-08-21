require_relative '../../config/application'
require_relative 'list'

class Task < ActiveRecord::Base
  belongs_to :lists
end

# p Task.all