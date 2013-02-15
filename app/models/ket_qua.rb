class KetQua < ActiveRecord::Base
  attr_accessible :loai_cau_hoi_id,  :hoc_sinh_id

  has_many :tra_lois
end
