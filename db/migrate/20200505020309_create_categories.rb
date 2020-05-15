class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.boolean :display_in_navbar, default: true

      t.timestamps
    end
  end
end
