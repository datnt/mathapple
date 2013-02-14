class CreateCongNhieuThapPhans < ActiveRecord::Migration
  def change
    create_table :cong_nhieu_thap_phans do |t|
      t.string :cau_hoi#vi du: nhap vao textbox, to?ng cua cac so thap phan sau
      t.string :so_a
      t.string :so_b
      t.string :so_c
      t.string :ketqua #se la 1 so thap phan
#NOTE: trong sach chi co cong 3 so la toi da
      t.belongs_to :loai_cau_hoi, :null => false

      t.timestamps
    end
  end
end
