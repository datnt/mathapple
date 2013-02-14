class CreateNhanPhansos < ActiveRecord::Migration
  def change
    create_table :nhan_phansos, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8'  do |t|
      t.string :cau_hoi#eg: Ket qua phep nhan 2 phan so sau
      t.string :phanso_a# co dinh da.ng la` 2/3; luu trong database; con hien thi giao dien van la kieu truyen thong
      t.string :phanso_b
      t.string :ketqua #se la 1 phan so, ti'ch cua 2 phan so a&b
      t.belongs_to :loai_cau_hoi, :null => false


      t.timestamps
    end
  end
end
