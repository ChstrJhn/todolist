require_relative '../../config/application'

class CreateTasks <ActiveRecord::Migration
   def change
   create_table :tasks do |t|
      t.belongs_to :list
      t.string :details
      t.boolean :status
      t.timestamps null: false
    end
  end
end