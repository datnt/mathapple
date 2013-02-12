class BaiTap < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :loai_cau_hois
  
end
