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
    @hocsinh = HocSinh.find_by_mahocsinh(params[:mahocsinh])
    session[:current_user] = @hocsinh.id
    redirect_to :action => "lambai"
  end
  def newhs
    @hocsinh = HocSinh.create(params[:hoc_sinh])
    session[:current_user] = @hocsinh.id
    redirect_to :action => "lambai"
  end
  def lambai
    @hocsinh = HocSinh.find(session[:current_user])
  end
end
