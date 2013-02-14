class CreateHonSoThapPhans < ActiveRecord::Migration
  def change
    create_table :hon_so_thap_phans do |t|
      t.string :cau_hoi
      t.string :songuyen
      t.string :phanso_a# co dinh da.ng la` 2/3; luu trong database; con hien thi giao dien van la kieu truyen thong
      t.string :ketqua #se la 1 thap phan, chuyen doi hon so thanh so thap phan; ref trang 37
      t.belongs_to :loai_cau_hoi, :null => false


      t.timestamps
    end
  end
end
