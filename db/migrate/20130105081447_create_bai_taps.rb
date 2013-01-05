class CreateBaiTaps < ActiveRecord::Migration
  def change
    create_table :bai_taps do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
