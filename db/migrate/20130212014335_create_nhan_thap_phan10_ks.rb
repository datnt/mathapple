class CreateNhanThapPhan10Ks < ActiveRecord::Migration
  def change
    create_table :nhan_thap_phan10_ks do |t|
      t.string :cau_hoi#nhap vao o trong ket qua cua phep nhan giua so thap phan va 10 hoac 100 hoac 1000
      t.string :so_a#la mot so thap phan
      t.string :so_b#la mot boi so cua 10
      t.string :ketqua #se la 1 so thap phan
#NOTE: nho validate luc' nhap du lieu, so B phai la boi so cua 10, c.u the 10,100,1000

      t.timestamps
    end
  end
end
