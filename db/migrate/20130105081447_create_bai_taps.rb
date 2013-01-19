class CreateBaiTaps < ActiveRecord::Migration
  def change
#    create_table(:table_name, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8')
    create_table :bai_taps, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
