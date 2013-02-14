class CreateTruThapPhans < ActiveRecord::Migration
  def change
    create_table :tru_thap_phans do |t|
      t.string :cau_hoi#nhap vao o trong hieu cua 2 so thap phan sau
      t.string :so_a
      t.string :so_b
      t.string :ketqua #se la 1 so thap phan
#NOTE: nho validate luc' nhap du lieu, so A phai lon hon so B

      t.belongs_to :loai_cau_hoi, :null => false

      t.timestamps
    end
  end
end
