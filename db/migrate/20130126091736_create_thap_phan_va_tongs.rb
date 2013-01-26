class CreateThapPhanVaTongs < ActiveRecord::Migration
  def change
    create_table :thap_phan_va_tongs do |t|
      t.string :cau_hoi#vi du: nhap vao textbox, dien vao o trong; tham khao trang 52
      t.string :so_a
      t.string :so_b
      t.string :so_dich
      t.string :ketqua #se la dau >, <, =
#NOTE: co the^? lu'c code giao dien, ta se da?o vi. tri' cua phep cong va so dich de co them cach
#hien thi da da.ng loai bai toan

      t.timestamps
    end
  end
end
