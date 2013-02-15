class ChamBaisController < ApplicationController
  def show
    @ketqua = KetQua.find(params[:id])
    @tralois = @ketqua.tra_lois
  end
  def danhgia
    t = TraLoi.find(params[:id_tra_loi])
    if params[:id] == "yes"
      t.dapan = "yes"
      t.save
    else
      t.dapan = "no"
      t.save
    end
    render :text => "..."
  end
  def ketthuc
    @baitap = BaiTap.find(params[:id])
  end
end
