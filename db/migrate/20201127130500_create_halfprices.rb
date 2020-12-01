class CreateHalfprices < ActiveRecord::Migration[5.2]
  def change
    create_table :halfprices do |t|
      t.integer :user_id
      t.string :hf_title
      t.string :hf_link
      t.string :hf_image
      t.text :hf_body
      t.references :hfcategory, foreign_key: true

      t.timestamps
    end
  end
end
