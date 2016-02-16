class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birthdate, :date
    add_column :users, :description, :text
    add_column :users, :photo_link, :string
  end
end
