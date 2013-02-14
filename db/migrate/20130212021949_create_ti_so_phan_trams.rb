class CreateTiSoPhanTrams < ActiveRecord::Migration
  def change
    create_table :ti_so_phan_trams do |t|
      t.string :cau_hoi#viet cau hoi tham khao trang 76
      t.string :phep_tinh#i.e: viet_lai, cong, tru, nhan, chia; Ref: trang 76 sach toan 5
      t.string :so_a#la 1 so thap phan
      t.string :so_b#truong hop viet_lai, so_b=nil
      t.string :ketqua#dung de so sanh voi du lieu ma hoc sinh nhap vao

      t.belongs_to :loai_cau_hoi, :null => false


      t.timestamps
    end
  end
end
