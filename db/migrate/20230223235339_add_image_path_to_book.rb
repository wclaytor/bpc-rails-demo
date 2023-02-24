class AddImagePathToBook < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_column :books, :image_path, :text
  end
end
