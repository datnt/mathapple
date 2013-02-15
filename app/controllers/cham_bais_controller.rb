class ChamBaisController < ApplicationController
  def show
    k = KetQua.find(params[:id])
    @tralois = k.tra_lois
  end
  def danhgia
    puts "=="
    puts "=="
    puts "=="
    puts "=="
    puts "=="
    puts "=="
    puts "=="
    puts "=="
    puts " v1= #{params[:id]}"
    puts " v2= #{params[:id_tra_loi]}"
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
