class PostsController < ApplicationController
 
  before_action :set_jenre, only: [:index, :new, :edit, :show, :create, :update]
  before_action :set_post, only: [:edit, :show, :destroy, :update]

  def index
    @posts = @jenre.posts.all #記事全取得/展開用
  end

  def new
    @post = Post.new #記事回収/投函用
  end

  def create
    @post = Post.create(params.require(:post).permit(:title, :content, {images:[]}).merge(jenre_id: params[:jenre_id], user_id: current_user.id))
    @save = @post.save
    @count = @post.images.length
    if @save
      if @count > 0
        redirect_to jenre_posts_path, notice: '写 真 を 含 む 全 て の 投 稿 が 完 了 し ま し た '
      else @count === 0
        redirect_to jenre_posts_path, notice: '写 真 以 外 の 投 稿 が 完 了 し ま し た '
      end
    else
      render :new
    end
  end

  def show

  end

  def edit
    #@result = 0
    #@count = @post.images.length
    @post.images[0].cache! unless @post.images[0].blank?
    @post.images[1].cache! unless @post.images[1].blank?
    @post.images[2].cache! unless @post.images[2].blank?
    @post.images[3].cache! unless @post.images[3].blank?
  end

  def update
    @save = @post.update(params.require(:post).permit(:title, :content, {images:[]}, :images_cache, :remove_images))
    #binding.pry
    if @save
      redirect_to jenre_post_path, notice: '投 稿 編 集 が 完 了 し ま し た'
    else
      render :edit
    end

    #image = params.require(:post).permit({images:[]}, :images_cache, :remove_images)
    
    #if image[:images] === nil
      #strong_update()
    #else
      #@result = image[:images].length
      #@count = @post.images.length
      #if @count === 4 && @result === 4
      #  render :edit
      #else
      #  @post.update(params.require(:post).permit(:title, :content, {images:[]}, :images_cache, :remove_images))
      #  redirect_to jenre_post_path,notice: '投 稿 編 集 が 完 了 し ま し た'
      #end
    #end
  end

  def destroy
    if @post.destroy
      redirect_to jenre_posts_path, notice: '投 稿 削 除 が 完 了 し ま し た '
    end
  end


private
  def set_jenre
    @jenre = Jenre.find(params[:jenre_id]) #link引数用jenre_id取得
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def strong_update
    
  end

end
