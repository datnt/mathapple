class TraLoi < ActiveRecord::Base
  attr_accessible :dapan, :noidung
  belongs_to :ket_qua
end
