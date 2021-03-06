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
  def edit
    @baitap = BaiTap.find(params[:id])
  end
  def update
    @baitap = BaiTap.find(params[:id])
    @baitap.update_attributes(params[:bai_tap])
    redirect_to mucluc_app_managers_path
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
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_sosanhps
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = SoSanhPhanSo.new(params[:so_sanh_phan_so])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_phansotp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = PhanSoThapPhan.new(params[:phan_so_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_congps
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = CongPhanSo.new(params[:cong_phan_so])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_trups
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = TruPhanSo.new(params[:tru_phan_so])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_nhanps
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = NhanPhanso.new(params[:nhan_phanso])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_chiaps
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ChiaPhanso.new(params[:chia_phanso])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_honso
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = HonSo.new(params[:hon_so])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_honsotp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = HonSoThapPhan.new(params[:hon_so_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_dodai
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = Dodai.new(params[:dodai])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_congnhieutp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = CongNhieuThapPhan.new(params[:cong_nhieu_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_tpvatong
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ThapPhanVaTong.new(params[:thap_phan_va_tong])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_trutp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = TruThapPhan.new(params[:tru_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_nhantptn
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = NhanThapPhanTuNhien.new(params[:nhan_thap_phan_tu_nhien])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_nhantp10k
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = NhanThapPhan10K.new(params[:nhan_thap_phan10_k])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_nhantptp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = NhanThapPhanThapPhan.new(params[:nhan_thap_phan_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_chiatptn
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ChiaThapPhanTuNhien.new(params[:chia_thap_phan_tu_nhien])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_chiatp10k
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ChiaThapPhan10K.new(params[:chia_thap_phan10_k])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_chiatntntp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ChiaTnTnThapPhan.new(params[:chia_tn_tn_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_chiatntp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ChiaTnThapPhan.new(params[:chia_tn_thap_phan])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_chiatptp
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = ChiaThapPhanTp.new(params[:chia_thap_phan_tp])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end
  def luu_tiso
    @baitap = BaiTap.find(params[:id])
    cate = Category.find(params[:id_cau_hoi])

    @cauhoi = TiSoPhanTram.new(params[:ti_so_phan_tram])
    loai = LoaiCauHoi.new
    loai.bai_tap_id = @baitap.id
    loai.title = cate.ten
    loai.content = cate.ma_cau_hoi
    loai.save

    @cauhoi.loai_cau_hoi_id = loai.id
    @cauhoi.save
    redirect_to bai_tap_path(:id => @baitap.id)
  end

  def xoa_cau_hoi
    c = LoaiCauHoi.find(params[:xoa_id])
    obj = eval(c.content).where(:loai_cau_hoi_id => c.id).first
    tra = TraLoi.where(:loai_cau_hoi_id => c.id).first
    obj.destroy
    if tra != nil
      tra.destroy
    end 
    c.destroy
    redirect_to bai_tap_path(:id => params[:id])
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
