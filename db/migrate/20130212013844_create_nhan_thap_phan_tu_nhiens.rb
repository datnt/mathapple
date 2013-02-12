class CreateNhanThapPhanTuNhiens < ActiveRecord::Migration
  def change
    create_table :nhan_thap_phan_tu_nhiens do |t|
      t.string :cau_hoi



      t.string :cau_hoi#nhap vao o trong ket qua cua phep nhan giua so thap phan va so tu nhien sau
      t.string :so_a#la mot so thap phan
      t.string :so_b#la mot so tu nhien
      t.string :ketqua #se la 1 so thap phan
#NOTE: nho validate luc' nhap du lieu, so B khong phai la mot so thap phan



      t.timestamps
    end
  end
end
