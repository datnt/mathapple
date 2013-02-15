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
    @ketqua = KetQua.find(params[:kq])

    ya = @ketqua.tra_lois.where(:dapan => "yes")
    ids = ya.map(&:id)
    wrong = @ketqua.tra_lois.select { |c| !ids.include?(c.id) }

    @right = ya.size
    @wrong = wrong.size



  end
end
