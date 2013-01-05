class LoaiCauHoisController < ApplicationController
  def index
    @phanloais = LoaiCauHoi.find(:all)
  end
  def new
  @phanloai = LoaiCauHoi.new
  end
  def create
    @phanloai = LoaiCauHoi.new(params[:loai_cau_hoi])
    if @phanloai.save
      redirect_to loai_cau_hois_path
    else
      render :action => "new"
    end
  end
end
