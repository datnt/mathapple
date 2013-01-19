class CreatePhepChia < ActiveRecord::Migration
  def change
    create_table :phep_chia, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.decimal :so_a
      t.decimal :so_b
      t.decimal :ketqua

      t.timestamps
    end
  end
end