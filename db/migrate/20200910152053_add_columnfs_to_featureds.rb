class AddColumnfsToFeatureds < ActiveRecord::Migration[5.2]
  def change
    add_column :featureds, :f_image_01, :string
    add_column :featureds, :f_image_02, :string
    add_column :featureds, :f_image_03, :string
    add_column :featureds, :f_image_04, :string
    add_column :featureds, :f_image_05, :string
    add_column :featureds, :f_image_06, :string
    add_column :featureds, :f_subtitle_01, :string
    add_column :featureds, :f_subtitle_02, :string
    add_column :featureds, :f_subtitle_03, :string
    add_column :featureds, :f_subtitle_04, :string
    add_column :featureds, :f_subtitle_05, :string
    add_column :featureds, :f_subtitle_06, :string
    add_column :featureds, :f_link_01, :string
    add_column :featureds, :f_link_02, :string
    add_column :featureds, :f_link_03, :string
    add_column :featureds, :f_link_04, :string
    add_column :featureds, :f_link_05, :string
    add_column :featureds, :f_link_06, :string
    add_column :featureds, :f_description_01, :text
    add_column :featureds, :f_description_02, :text
    add_column :featureds, :f_description_03, :text
    add_column :featureds, :f_description_04, :text
    add_column :featureds, :f_description_05, :text
    add_column :featureds, :f_description_06, :text
    add_column :featureds, :f_spare_01, :string
    add_column :featureds, :f_spare_02, :string
    add_column :featureds, :f_spare_03, :string
    add_column :featureds, :f_spare_04, :string
    add_column :featureds, :f_spare_05, :string
    add_column :featureds, :f_spare_06, :string
    add_column :featureds, :f_spare_07, :string
    add_column :featureds, :f_spare_08, :string
    add_column :featureds, :f_spare_09, :string
    add_column :featureds, :f_spare_10, :string
  end
end
