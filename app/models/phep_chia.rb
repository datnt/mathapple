class PhepChia < ActiveRecord::Base
  attr_accessible :ketqua, :so_a, :so_b
  belongs_to :bai_tap
end
