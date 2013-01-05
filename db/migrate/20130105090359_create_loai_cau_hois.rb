class CreateLoaiCauHois < ActiveRecord::Migration
  def change
    create_table :loai_cau_hois do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
