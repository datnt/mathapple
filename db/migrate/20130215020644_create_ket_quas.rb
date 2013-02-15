class CreateKetQuas < ActiveRecord::Migration
  def change
    create_table :ket_quas do |t|
      t.belongs_to :bai_tap, :null => false
      t.belongs_to :hoc_sinh, :null => false

      t.timestamps
    end
  end
end
