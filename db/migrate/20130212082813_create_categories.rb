class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :ten
      t.string :ma_cau_hoi

      t.timestamps
    end
  end
end
