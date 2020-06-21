class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :b_title_01
      t.string :b_title_02
      t.string :b_title_03
      
      t.string :b_link_01
      t.string :b_link_02
      t.string :b_link_03

      t.timestamps
    end
  end
end
