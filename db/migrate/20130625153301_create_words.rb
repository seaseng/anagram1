require_relative '../../config/database.rb'
require_relative '../../config/environment.rb'

class CreateWords < ActiveRecord::Migration
  def change
    create_table  :words do |t|
      t.string    :name
      t.string    :sorted_name

      t.timestamps
    end
  end
end
