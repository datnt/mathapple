class KetQua < ActiveRecord::Base
  attr_accessible :ten, :loai_cau_hoi, :hoc_sinh
  has_many :tra_lois
end
