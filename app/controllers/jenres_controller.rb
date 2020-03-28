class JenresController < ApplicationController
  def index
    @toiret = Jenre.find(1)
  end

  def show
    jenre = Jenre.find(params[:id]) #送られたparams{}をparamsメソッドを解除・id取得、これを以てmodel.findでjenreレコードのレコードを丸々取得
    @post_jenre_id = jenre.posts.find{ |post| post[:jenre_id]} #jenreレコード.posts(アソシエで複数形).findでjenreに紐づくpostレコードを全数取得
                                                               #[ post[] post[]]となっている。(配列名はparamsでもない!)findの引数に空の{}を引数に当てて、
                                                               #|post|の値引数をハッシュ内で宣言。最終post[:jenre_id]でpost 1回目のjenre_idのみを取得                                                      
  end


end
