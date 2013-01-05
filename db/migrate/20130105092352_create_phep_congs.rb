class CreatePhepCongs < ActiveRecord::Migration
  def change
    create_table :phep_congs do |t|
      t.decimal :so_a
      t.decimal :so_b
      t.decimal :ketqua
      t.belongs_to :loai_cau_hoi, :null => false

      t.timestamps
    end
  end
end
