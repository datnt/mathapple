class TraLoi < ActiveRecord::Base
  attr_accessible :dapan, :noidung, :loai_cau_hoi_id, :ket_qua_id
  belongs_to :ket_qua
end
