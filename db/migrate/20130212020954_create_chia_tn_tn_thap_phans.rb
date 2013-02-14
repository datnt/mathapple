class CreateChiaTnTnThapPhans < ActiveRecord::Migration
  def change
    create_table :chia_tn_tn_thap_phans do |t|
      t.string :cau_hoi#nhap vao o trong ket qua phep chia so tu nhien va so tu nhien
      t.string :so_a#la 1 so tu nhien
      t.string :so_b#la 1 so tu nhien
      t.string :ketqua #la 1 so thap phan
#NOTE: nho validate luc' nhap du lieu,ketqua phai la so thap phan va la thuong cua a&b

      t.belongs_to :loai_cau_hoi, :null => false


      t.timestamps
    end
  end
end
