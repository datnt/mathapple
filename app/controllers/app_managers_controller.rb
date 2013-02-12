class AppManagersController < ApplicationController
  def index
    
  end
  def danh_muc
    redirect_to :action => "index"
  end
  def mucluc
    @baitaps = BaiTap.find(:all)
  end
end
