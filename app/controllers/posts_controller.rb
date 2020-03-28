class PostsController < ApplicationController
  
  def index
    @post_jenre_id = params[:jenre_id] #jenre/showから送信したparams(params_idのみ)を個別に取得
    jenre = Jenre.find(params[:jenre_id]) #該当jenreレコードの全カラムparamsを確認
    @posts = jenre.posts #該当postレコードの全カラムparamsを確認
    
  end

  def new
    @jenre = Jenre.find(params[:jenre_id])
    @post = Post.new

  end

  def create
    @post = Post.create(params.require(:post).permit(:title, :content, :image).merge(jenre_id: params[:jenre_id]))
    redirect_to jenres_path
  end

  def show
    @post = Post.find(params[:id])
    
  end

  def edit
    @post = Post.find(params[:id])
    @jenre = Jenre.find(params[:jenre_id])
    
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title, :content, :image))
    redirect_to jenres_path

  end

  def destroy
    Post.destroy(params[:id])
    redirect_to jenres_path
  end


private



end
