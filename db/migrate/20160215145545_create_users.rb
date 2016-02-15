class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.date :birthdate
      t.text :description
      t.string :picture_link

      t.timestamps null: false
    end
  end
end
