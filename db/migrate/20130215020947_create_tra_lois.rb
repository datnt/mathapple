class CreateTraLois < ActiveRecord::Migration
  def change
    create_table :tra_lois do |t|
      t.belongs_to :ket_qua, :null => false
      t.belongs_to :loai_cau_hoi, :null => false
      t.string :noidung
      t.string :dapan

      t.timestamps
    end
  end
end
