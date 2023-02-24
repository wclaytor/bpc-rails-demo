class AddImagePathToAuthor < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_column :authors, :image_path, :text
  end
end
