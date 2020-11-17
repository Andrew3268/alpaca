class CreateSalesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_tags, :id=> false do |t|
      t.references :sale, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
