class CreatePhanSoThapPhans < ActiveRecord::Migration
  def change
    create_table :phan_so_thap_phans do |t|
      t.string :cau_hoi #vi du: so nay co phai la phan so thap phan khong
      t.string :phanso# co dinh da.ng la` 5/10; luu trong database; con hien thi giao dien van la kieu truyen thong
      t.string :ketqua #co, hoac khong, giao dien se la checkbox

      t.timestamps
    end
  end
end
