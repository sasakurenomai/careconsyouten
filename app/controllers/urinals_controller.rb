class UrinalsController < ApplicationController
  before_action :set_jenre, only:[:update]

  def show
    @urinal = Urinal.find(params[:id])
    @jenre = Jenre.find(params[:jenre_id])

  end

  def new
    @jenre = Jenre.find(params[:jenre_id])
    @urinal = Urinal.new
  end

  def create
    Urinal.create(params.require(:urinal).permit(:title_a, :title_b, :title_c, :title_d, :content_a, :content_b, :content_c, :content_d, {urinal_images:[]}).merge(jenre_id: params[:jenre_id]))
    @jenre = Jenre.find(params[:jenre_id])
    redirect_to jenre_path(@jenre.id)
  end

  def edit
    @urinal = Urinal.find(params[:id])
    @jenre = Jenre.find(params[:jenre_id])
    @urinal.urinal_images[0].cache! unless @urinal.urinal_images[0].blank?
    @urinal.urinal_images[1].cache! unless @urinal.urinal_images[1].blank?
    @urinal.urinal_images[2].cache! unless @urinal.urinal_images[2].blank?
    @urinal.urinal_images[3].cache! unless @urinal.urinal_images[3].blank?
  
  end

  def update
    @urinal = Urinal.find(params[:id])
    @urinal.update(params.require(:urinal).permit(:title_a, :title_b, :title_c, :title_d, :content_a, :content_b, :content_c, :content_d, {urinal_images:[]}, :urinal_images_cache, :remove_urinal_images))
    redirect_to jenre_path(@jenre.id)
  end

  def destroy
    Urinal.destroy(params[:id])
    @jenre = Jenre.find(params[:jenre_id])
    redirect_to root_path
  end

  private 
  
  def set_jenre
    @jenre = Jenre.find(params[:jenre_id])
  end

end
