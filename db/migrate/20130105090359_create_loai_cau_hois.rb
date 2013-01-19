class CreateLoaiCauHois < ActiveRecord::Migration
  def change
    create_table :loai_cau_hois, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
