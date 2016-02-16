class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.date :date
      t.time :starting_time
      t.time :end_time
      t.integer :price
      t.string :pictogram_link
      t.text :description

      t.timestamps null: false
    end
  end
end
