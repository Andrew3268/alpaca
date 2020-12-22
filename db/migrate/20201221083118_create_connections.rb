class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.integer :user_id
      t.string :con_title
      t.string :con_image
      t.string :con_link
      t.string :con_friendly_id

      t.string :con_spare_01
      t.string :con_spare_02
      t.string :con_spare_03
      t.string :con_spare_04
      t.string :con_spare_05
      t.string :con_spare_06
      t.string :con_spare_07
      t.string :con_spare_08
      t.string :con_spare_09
      t.string :con_spare_10
      t.string :con_spare_11
      t.string :con_spare_12
      t.string :con_spare_13
      t.string :con_spare_14
      t.string :con_spare_15
      t.string :con_spare_16
      t.string :con_spare_17
      t.string :con_spare_18
      t.string :con_spare_19
      t.string :con_spare_20

      t.text :con_spare_31
      t.text :con_spare_32
      t.text :con_spare_33
      t.text :con_spare_34
      t.text :con_spare_35

      t.float :con_spare_41
      t.float :con_spare_42
      t.float :con_spare_43
      t.float :con_spare_44
      t.float :con_spare_45
      t.float :con_spare_46
      t.float :con_spare_47
      t.float :con_spare_48
      t.float :con_spare_49
      t.float :con_spare_50

      t.integer :con_spare_56
      t.integer :con_spare_57
      t.integer :con_spare_58
      t.integer :con_spare_59
      t.integer :con_spare_60

      t.decimal :con_spare_61
      t.decimal :con_spare_62
      t.decimal :con_spare_63
      t.decimal :con_spare_64
      t.decimal :con_spare_65

      t.datetime :con_spare_66
      t.datetime :con_spare_67
      t.datetime :con_spare_68
      t.datetime :con_spare_69
      t.datetime :con_spare_70

      t.date :con_spare_71
      t.date :con_spare_72
      t.date :con_spare_73
      t.date :con_spare_74
      t.date :con_spare_75

      t.timestamps
    end
  end
end
