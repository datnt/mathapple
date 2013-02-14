# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130212082813) do

  create_table "bai_taps", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "ten"
    t.string   "ma_cau_hoi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chia_phansos", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phanso_a"
    t.string   "phanso_b"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "chia_thap_phan10_ks", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chia_thap_phan_tps", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chia_thap_phan_tu_nhiens", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chia_tn_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chia_tn_tn_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cong_nhieu_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "so_c"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cong_phan_sos", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phanso_a"
    t.string   "phanso_b"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "dodais", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "donvi_a"
    t.string   "so_b"
    t.string   "donvi_b"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "hon_so_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "songuyen"
    t.string   "phanso_a"
    t.string   "phanso_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hon_sos", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "songuyen"
    t.string   "phanso_a"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "loai_cau_hois", :force => true do |t|
    t.integer  "bai_tap_id", :null => false
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nhan_phansos", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phanso_a"
    t.string   "phanso_b"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "nhan_thap_phan10_ks", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nhan_thap_phan_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nhan_thap_phan_tu_nhiens", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "phan_so_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phanso"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "phep_chia", :force => true do |t|
    t.decimal  "so_a",       :precision => 10, :scale => 0
    t.decimal  "so_b",       :precision => 10, :scale => 0
    t.decimal  "ketqua",     :precision => 10, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "phep_congs", :force => true do |t|
    t.decimal  "so_a",            :precision => 10, :scale => 0
    t.decimal  "so_b",            :precision => 10, :scale => 0
    t.decimal  "ketqua",          :precision => 10, :scale => 0
    t.integer  "loai_cau_hoi_id",                                :null => false
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "so_sanh_phan_sos", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phanso_a"
    t.string   "phanso_b"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "thap_phan_va_tongs", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "so_dich"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ti_so_phan_trams", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phep_tinh"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tru_phan_sos", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "phanso_a"
    t.string   "phanso_b"
    t.string   "ketqua"
    t.integer  "loai_cau_hoi_id", :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tru_thap_phans", :force => true do |t|
    t.string   "cau_hoi"
    t.string   "so_a"
    t.string   "so_b"
    t.string   "ketqua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
