class CreateGuidesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :guides_tags, :id => false do |t|
      t.references :guide, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
