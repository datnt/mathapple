class CreateSoSanhPhanSos < ActiveRecord::Migration
  def change
    create_table :so_sanh_phan_sos, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :cau_hoi#vi du: dien vao cho trong, so a hay so b lon hon hay bang nhau
      t.string :phanso_a# co dinh da.ng la` 2/3; luu trong database; con hien thi giao dien van la kieu truyen thong
      t.string :phanso_b
      t.string :ketqua #('chi la` 1 character >, hoac =, hoac <); cai nay thi code se kiem tra
#tham khao trang 6 sach giao khoa lop 5
      t.belongs_to :loai_cau_hoi, :null => false

      t.timestamps
    end
  end
end
