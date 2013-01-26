class CreateDodais < ActiveRecord::Migration
  def change
    create_table :dodais do |t|
      t.string :cau_hoi
      t.string :so_a
      t.string :donvi_a #ta se su dung so sa'nh chuoi de xac di.nh la m(met) hay dm(decimet)
      t.string :so_b
      t.string :donvi_b


      t.timestamps
    end
  end
end
