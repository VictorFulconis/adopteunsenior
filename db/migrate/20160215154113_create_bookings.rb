class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.boolean :accepted
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
