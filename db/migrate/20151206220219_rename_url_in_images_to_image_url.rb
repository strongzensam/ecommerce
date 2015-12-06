class RenameUrlInImagesToImageUrl < ActiveRecord::Migration
  def change
    rename_column :images, :url, :image_url 
  end
end
