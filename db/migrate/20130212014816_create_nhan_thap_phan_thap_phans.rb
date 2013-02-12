class CreateNhanThapPhanThapPhans < ActiveRecord::Migration
  def change
    create_table :nhan_thap_phan_thap_phans do |t|
      t.string :cau_hoi#nhap vao o trong ket qua cua phep nhan giua so thap phan va mot so thap phan
      t.string :so_a#la mot so thap phan
      t.string :so_b#la mot so thap phan
      t.string :ketqua #se la 1 so thap phan
#NOTE: OPTIONAL - validate so b la mot so thap phan

      t.timestamps
    end
  end
end
