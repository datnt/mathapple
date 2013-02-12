class CreateChiaThapPhanTuNhiens < ActiveRecord::Migration
  def change
    create_table :chia_thap_phan_tu_nhiens do |t|
      t.string :cau_hoi#nhap vao o trong ket qua phep chia so thap phan va so tu nhien sau
      t.string :so_a
      t.string :so_b
      t.string :ketqua #se la 1 so thap phan
#NOTE: nho validate luc' nhap du lieu, so A phai la so thap phan

      t.timestamps
    end
  end
end
