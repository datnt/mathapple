class ChamBaisController < ApplicationController
  def show
    k = KetQua.find(params[:id])
    @tralois = k.tra_lois
  end
end
