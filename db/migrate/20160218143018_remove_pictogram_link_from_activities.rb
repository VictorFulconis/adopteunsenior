class RemovePictogramLinkFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :pictogram_link, :string
  end
end
