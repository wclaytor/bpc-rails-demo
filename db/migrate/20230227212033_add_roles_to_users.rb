class AddRolesToUsers < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_column :users, :role, :integer, default: 0
  end
end
