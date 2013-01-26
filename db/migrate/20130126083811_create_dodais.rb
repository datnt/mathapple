class CreateDodais < ActiveRecord::Migration
  def change
    create_table :dodais do |t|
      #ta cung se su dung table dodais de thuc hien cau hoi ve dien ti'ch
      #vi chu'ng co' cu`ng ti'n chat
      #chung ta co the su dung donvi met vuong bang cac'h viet m2
      #tren giao dien ta co the de 1 conbobox trong do' co' 1 image m2 viet du'ng ca'ch
      #khi user select thi thuc ra trong database se luu thanh chuoi "m2"
      t.string :cau_hoi
      t.string :so_a
      t.string :donvi_a #ta se su dung so sa'nh chuoi de xac di.nh la m(met) hay dm(decimet)
      t.string :so_b
      t.string :donvi_b


      t.timestamps
    end
  end
end
