class BaiTapsController < ApplicationController
  def index
    @baitaps = BaiTap.find(:all)
  end
  def new
    @baitap = BaiTap.new
  end
  def create
    @baitap = BaiTap.new(params[:bai_tap])
    if @baitap.save
      redirect_to bai_taps_path
    else
      render :action => "new"
    end

  end

  def show
    @baitap = BaiTap.find(params[:id])
  end

  def them_cau_hoi
    @baitap = BaiTap.find(params[:id])
    @cauhoi = LoaiCauHoi.new
  end

  def form_cau_hoi
    @baitap = BaiTap.find(params[:id])
    @cate = Category.find(params[:id_cau_hoi])
    @cauhoi = eval(@cate.ma_cau_hoi).new
    render :layout => false
  end

  def luu_phep_cong
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = PhepCong.new(params[:phep_cong])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_taps_path(:@baitap)
  end


































  
  def cau_hoi
    #cho nay tam thoi nhu vay
    # sau nay se phai truyen vao tham so loai cau hoi
    # tuy vao tham so nay ma` khoi tao model cau hoi tuong ung
    @cauhoi = PhepCong.new
  end

  
  def cac_cau_hoi
    
  end
  def bai_thi
    @cauhoi = PhepCong.find(:all).first()
  end
  def luu_bai_thi
    @cauhoi = PhepCong.find(params[:phep_cong][:id])
    @thong_bao = ""

    ketqua = params[:ket_qua_hs]

    if ketqua.to_f == @cauhoi.ketqua
      @thong_bao = "correct"
    else
      @thong_bao = "Sai"
    end
  end

end
