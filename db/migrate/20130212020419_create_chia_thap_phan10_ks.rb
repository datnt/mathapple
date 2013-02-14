class CreateChiaThapPhan10Ks < ActiveRecord::Migration
  def change
    create_table :chia_thap_phan10_ks do |t|
      t.string :cau_hoi#nhap vao o trong ket qua phep chia so thap phan va mu so cua 10
      t.string :so_a
      t.string :so_b#la 10, 100, 1000
      t.string :ketqua 
#NOTE: nho validate luc' nhap du lieu, so A phai la so thap phan, so B la mu so cua 10

      t.belongs_to :loai_cau_hoi, :null => false


      t.timestamps
    end
  end
end
