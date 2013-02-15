class ChamBaisController < ApplicationController
  def show
    k = KetQua.find(params[:id])
    @tralois = k.tra_lois
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
end
