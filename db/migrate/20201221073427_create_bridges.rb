class CreateBridges < ActiveRecord::Migration[5.2]
  def change
    create_table :bridges do |t|
      t.string :title
      t.text :body
      t.references :bcategory, foreign_key: true

      t.timestamps
    end
  end
end
