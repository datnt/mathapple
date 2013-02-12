class CreateChiaTnThapPhans < ActiveRecord::Migration
  def change
    create_table :chia_tn_thap_phans do |t|
      t.string :cau_hoi#nhap vao o trong ket qua phep chia so thap phan va 1 so tu nhien
      t.string :so_a#la 1 so thap phan
      t.string :so_b#la 1 so tu nhien
      t.string :ketqua #la 1 so thap phan
#NOTE: nho validate luc' nhap du lieu,ketqua phai la so thap phan va la thuong cua a&b

      t.timestamps
    end
  end
end
