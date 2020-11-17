class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.string :s_title
      t.string :s_link
      t.string :s_source
      t.string :s_video
      t.string :s_hashtag
      t.text :s_description
      t.float :s_is_price
      t.float :s_was_price
      t.float :s_pct


      t.references :scategory, foreign_key: true


      t.string :s_spare_01
      t.string :s_spare_02
      t.string :s_spare_03
      t.string :s_spare_04
      t.string :s_spare_05
      t.string :s_spare_06
      t.string :s_spare_07
      t.string :s_spare_08
      t.string :s_spare_09
      t.string :s_spare_10
      t.string :s_spare_11
      t.string :s_spare_12
      t.string :s_spare_13
      t.string :s_spare_14
      t.string :s_spare_15
      t.string :s_spare_16
      t.string :s_spare_17
      t.string :s_spare_18
      t.string :s_spare_19
      t.string :s_spare_20
      t.string :s_spare_21
      t.string :s_spare_22
      t.string :s_spare_23
      t.string :s_spare_24
      t.string :s_spare_25
      t.string :s_spare_26
      t.string :s_spare_27
      t.string :s_spare_28
      t.string :s_spare_29
      t.string :s_spare_30

      t.text :s_spare_31
      t.text :s_spare_32
      t.text :s_spare_33
      t.text :s_spare_34
      t.text :s_spare_35
      t.text :s_spare_36
      t.text :s_spare_37
      t.text :s_spare_38
      t.text :s_spare_39
      t.text :s_spare_40

      t.float :s_spare_41
      t.float :s_spare_42
      t.float :s_spare_43
      t.float :s_spare_44
      t.float :s_spare_45
      t.float :s_spare_46
      t.float :s_spare_47
      t.float :s_spare_48
      t.float :s_spare_49
      t.float :s_spare_50
      t.float :s_spare_51
      t.float :s_spare_52
      t.float :s_spare_53
      t.float :s_spare_54
      t.float :s_spare_55
      t.float :s_spare_55

      t.integer :s_spare_56
      t.integer :s_spare_57
      t.integer :s_spare_58
      t.integer :s_spare_59
      t.integer :s_spare_60

      t.decimal :s_spare_61
      t.decimal :s_spare_62
      t.decimal :s_spare_63
      t.decimal :s_spare_64
      t.decimal :s_spare_65

      t.datetime :s_spare_66
      t.datetime :s_spare_67
      t.datetime :s_spare_68
      t.datetime :s_spare_69
      t.datetime :s_spare_70

      t.date :s_spare_71
      t.date :s_spare_72
      t.date :s_spare_73
      t.date :s_spare_74
      t.date :s_spare_75

      t.timestamps
    end
  end
end
