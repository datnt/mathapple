class CreateHocSinhs < ActiveRecord::Migration
  def change
    create_table :hoc_sinhs do |t|
      t.string :ten
      t.string :khoi_lop
      t.string :mahocsinh

      t.timestamps
    end
  end
end
