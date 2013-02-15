class PhepCong < ActiveRecord::Base
  attr_accessible :ketqua, :so_a, :so_b, :cau_hoi
  belongs_to :bai_tap
end
