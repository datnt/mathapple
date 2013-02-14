class CreateHonSos < ActiveRecord::Migration
  def change
    create_table :hon_sos, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :cau_hoi
      t.string :songuyen
      t.string :phanso_a# co dinh da.ng la` 2/3; luu trong database; con hien thi giao dien van la kieu truyen thong
      t.string :ketqua #se la 1 phan so, da.ng to'an la` chuyen doi hon so thanh phan so
      t.belongs_to :loai_cau_hoi, :null => false


      t.timestamps
    end
  end
end
