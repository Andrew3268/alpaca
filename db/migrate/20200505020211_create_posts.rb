class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.integer :user_id
      t.string :title
      t.string :link
      t.string :source
      t.string :video
      t.string :image_toggle
      t.text :description
      t.float :is_price
      t.float :was_price
      t.float :pct

      t.references :category, foreign_key: true
      t.references :shop, foreign_key: true
      t.references :guide, foreign_key: true

      t.string :p_spare_01
      t.string :p_spare_02
      t.string :p_spare_03
      t.string :p_spare_04
      t.string :p_spare_05
      t.string :p_spare_06
      t.string :p_spare_07
      t.string :p_spare_08
      t.string :p_spare_09
      t.string :p_spare_10
      t.string :p_spare_11
      t.string :p_spare_12
      t.string :p_spare_13
      t.string :p_spare_14
      t.string :p_spare_15
      t.string :p_spare_16
      t.string :p_spare_17
      t.string :p_spare_18
      t.string :p_spare_19
      t.string :p_spare_20
      t.string :p_spare_21
      t.string :p_spare_22
      t.string :p_spare_23
      t.string :p_spare_24
      t.string :p_spare_25
      t.string :p_spare_26
      t.string :p_spare_27
      t.string :p_spare_28
      t.string :p_spare_29
      t.string :p_spare_30

      t.text :p_spare_31
      t.text :p_spare_32
      t.text :p_spare_33
      t.text :p_spare_34
      t.text :p_spare_35
      t.text :p_spare_36
      t.text :p_spare_37
      t.text :p_spare_38
      t.text :p_spare_39
      t.text :p_spare_40

      t.float :p_spare_41
      t.float :p_spare_42
      t.float :p_spare_43
      t.float :p_spare_44
      t.float :p_spare_45
      t.float :p_spare_46
      t.float :p_spare_47
      t.float :p_spare_48
      t.float :p_spare_49
      t.float :p_spare_50
      t.float :p_spare_51
      t.float :p_spare_52
      t.float :p_spare_53
      t.float :p_spare_54
      t.float :p_spare_55
      t.float :p_spare_55

      t.integer :p_spare_56
      t.integer :p_spare_57
      t.integer :p_spare_58
      t.integer :p_spare_59
      t.integer :p_spare_60

      t.decimal :p_spare_61
      t.decimal :p_spare_62
      t.decimal :p_spare_63
      t.decimal :p_spare_64
      t.decimal :p_spare_65

      t.datetime :p_spare_66
      t.datetime :p_spare_67
      t.datetime :p_spare_68
      t.datetime :p_spare_69
      t.datetime :p_spare_70

      t.date :p_spare_71
      t.date :p_spare_72
      t.date :p_spare_73
      t.date :p_spare_74
      t.date :p_spare_75





      t.timestamps
    end
  end
end
