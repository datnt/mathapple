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
    @baitap = BaiTap.find(params[:id])
    session[:current_baitap] = @baitap.id
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
    @baitap = BaiTap.find(session[:current_baitap])
    @hocsinh = HocSinh.find(session[:current_user])
    @traloi = TraLoi.new
    @cauhoi = @baitap.loai_cau_hois.first
    @traloi.loai_cau_hoi_id = @baitap.loai_cau_hois.first.id
    if KetQua.where(:loai_cau_hoi_id => @cauhoi.id,  :hoc_sinh_id => @hocsinh.id).size == 0
      @ketqua = KetQua.create(:loai_cau_hoi_id => @cauhoi.id,  :hoc_sinh_id => @hocsinh.id)
      session[:current_ketqua] = @ketqua.id
    else
      @ketqua = KetQua.where(:loai_cau_hoi_id => @cauhoi.id,  :hoc_sinh_id => @hocsinh.id).first
      session[:current_ketqua] = @ketqua.id
    end
  end
  def luu_traloi
    @baitap = BaiTap.find(session[:current_baitap])
    @hocsinh = HocSinh.find(session[:current_user])
    traloi = TraLoi.create(params[:tra_loi])
    loaicauhoi = @baitap.loai_cau_hois.where(:id => traloi.loai_cau_hoi_id).first
    current_index = @baitap.loai_cau_hois.index(loaicauhoi)
    session[:next_cauhoi_index] = current_index + 1
    redirect_to :action => "tiep_theo"
  end
  def tiep_theo
    @baitap = BaiTap.find(session[:current_baitap])
    @hocsinh = HocSinh.find(session[:current_user])
    @traloi = TraLoi.new
    @cauhoi = @baitap.loai_cau_hois.at(session[:next_cauhoi_index])
    if @cauhoi != nil
    
      @traloi.loai_cau_hoi_id =@cauhoi.id
      @ketqua = KetQua.create(:loai_cau_hoi_id => @cauhoi.id,  :hoc_sinh_id => @hocsinh.id)
      @ketqua = KetQua.find(session[:current_ketqua])
      render :action => "lambai"
    else
      render :action => "ketthuc"
    end

    
  end
  def ketthuc
    
  end
end
