class ChangeActivitiesDateFormat < ActiveRecord::Migration
  def change
    change_column :activities, :starting_time, "date USING starting_time::date"
    change_column :activities, :end_time, "date USING end_time::date"
  end
end
