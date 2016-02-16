class RemoveBirthdateToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :birthdate, :date
  end
end
