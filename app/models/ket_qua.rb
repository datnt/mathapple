class KetQua < ActiveRecord::Base
  attr_accessible :bai_tap_id,  :hoc_sinh_id
  belongs_to :bai_tap

  has_many :tra_lois


end
