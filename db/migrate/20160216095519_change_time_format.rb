class ChangeTimeFormat < ActiveRecord::Migration
  def change
    change_column :activities, :starting_time, :string
    change_column :activities, :end_time, :string
  end
end
