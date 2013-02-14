class CreateChiaThapPhanTps < ActiveRecord::Migration
  def change
    create_table :chia_thap_phan_tps do |t|
      t.string :cau_hoi#nhap vao o trong ket qua phep chia so thap phan va 1 so thap phan
      t.string :so_a#la 1 so thap phan
      t.string :so_b#la 1 so thap phan
      t.string :ketqua 
#NOTE: nho validate luc' nhap du lieu,ketqua phai la so thap phan va la thuong cua a&b

      t.belongs_to :loai_cau_hoi, :null => false

      t.timestamps
    end
  end
end
