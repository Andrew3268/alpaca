class CreateFeatureds < ActiveRecord::Migration[5.2]
  def change
    create_table :featureds do |t|
      t.string :ftitle
      t.string :furl
      t.string :fimage

      t.timestamps
    end
  end
end
