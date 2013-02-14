class CreateLoaiCauHois < ActiveRecord::Migration
  def change
    create_table :loai_cau_hois, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.belongs_to :bai_tap, :null => false
      t.string :title#se luu lai ten hien thi cua model, i.e Category.ten
      t.text :content#se luu lai ten model, eg: PhepCong, i.e Category.ma_cau_hoi

      t.timestamps
    end
  end
end
