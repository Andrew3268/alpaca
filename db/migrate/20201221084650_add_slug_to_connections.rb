class AddSlugToConnections < ActiveRecord::Migration[5.2]
  def change
    add_column :connections, :slug, :string
    add_index :connections, :slug, unique: true
  end
end
