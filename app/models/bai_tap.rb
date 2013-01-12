class BaiTap < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :phep_cong
  
end
