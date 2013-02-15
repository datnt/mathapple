class AppManagersController < ApplicationController
  def index
    
  end
  def danh_muc
    redirect_to :action => "index"
  end
  def mucluc
    @baitaps = BaiTap.find(:all)
  end
  def reception
    @hocsinh = HocSinh.new
    @hocsinh.mahocsinh = SecureRandom.hex(3)
  end
  def xulymahs
    
  end
  def newhs
    
  end
end
