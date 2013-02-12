class LoaiCauHoi < ActiveRecord::Base
  attr_accessible :content, :title

  has_many :phep_congs

  has_many :chia_tn_thap_phans
  has_many :hon_sos
  has_many :nhan_thap_phan_thap_phans
  has_many :so_sanh_phan_sos
  has_many :chia_phansos
  has_many :chia_tn_tn_thap_phans
  has_many :hon_so_thap_phans
  has_many :nhan_thap_phan_tu_nhiens
  has_many :thap_phan_va_tongs
  has_many :chia_thap_phan10_ks
  has_many :cong_nhieu_thap_phans
  has_many :loai_cau_hois
  has_many :phan_so_thap_phans
  has_many :ti_so_phan_trams
  has_many :chia_thap_phan_tps
  has_many :cong_phan_sos
  has_many :nhan_phansos
  has_many :phep_chias
  has_many :tru_phan_sos
  has_many :chia_thap_phan_tu_nhiens
  has_many :dodais
  has_many :nhan_thap_phan10_ks
  has_many :phep_congs
  has_many :tru_thap_phans


end
