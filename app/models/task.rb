require_relative '../../config/application'
require_relative 'list'

class Task < ActiveRecord::Base
  belongs_to :lists
  validates :details, presence: true
end

p Task.all