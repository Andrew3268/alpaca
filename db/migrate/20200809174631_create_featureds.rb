class CreateFeatureds < ActiveRecord::Migration[5.2]
  def change
    create_table :featureds do |t|
      t.string :ftitle
      t.string :furl
      t.string :fimage

      t.string :f_image_01
      t.string :f_image_02
      t.string :f_image_03
      t.string :f_image_04
      t.string :f_image_05
      t.string :f_image_06

      t.string :f_subtitle_01
      t.string :f_subtitle_02
      t.string :f_subtitle_03
      t.string :f_subtitle_04
      t.string :f_subtitle_05
      t.string :f_subtitle_06

      t.string :f_link_01
      t.string :f_link_02
      t.string :f_link_03
      t.string :f_link_04
      t.string :f_link_05
      t.string :f_link_06

      t.text :f_description_01
      t.text :f_description_02
      t.text :f_description_03
      t.text :f_description_04
      t.text :f_description_05
      t.text :f_description_06


      t.timestamps
    end
  end
end
