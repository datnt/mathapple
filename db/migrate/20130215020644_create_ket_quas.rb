class CreateKetQuas < ActiveRecord::Migration
  def change
    create_table :ket_quas do |t|
      t.belongs_to :loai_cau_hoi, :null => false
      t.belongs_to :hoc_sinh, :null => false

      t.timestamps
    end
  end
end
