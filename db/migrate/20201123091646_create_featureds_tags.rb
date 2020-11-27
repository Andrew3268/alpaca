 class CreateFeaturedsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :featureds_tags, :id => false do |t|
      t.references :featured, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
