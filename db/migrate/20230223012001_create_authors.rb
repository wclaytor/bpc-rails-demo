class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false, index: {unique: true}
      t.text :bio

      t.timestamps
    end
  end
end
