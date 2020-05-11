class JenresController < ApplicationController
  
  def index
    @toiret = Jenre.find(1)
    @sink = Jenre.find(2)
    @bath = Jenre.find(3)
    
  end

  def show
    @jenre = params[:id].to_i #link引数用 jenre_id取得
                                                     
    if @jenre === 1
      @low_tank = Urinal.find(1)
      @high_tank = Urinal.find(2)
      @one_piece = Urinal.find(3)
      @low_silhouette = Urinal.find(4)
      @high_silhouette = Urinal.find(5)
      @hanger_piss = Urinal.find(6)
      @stall_piss = Urinal.find(7)
      @fv_piss = Urinal.find(8)
      @auto_piss = Urinal.find(9)
      @washlet = Urinal.find(10)
      @washlet_remote = Urinal.find(11)
      @lever_handle = Urinal.find(12)
      @water_pipe = Urinal.find(13)
      @wash_pipe = Urinal.find(14)
      @spud = Urinal.find(15)
      @ball_tap = Urinal.find(16)
      @float_valve = Urinal.find(17)
      @fv_stool = Urinal.find(18)
      render :show_1, layout: "application", local:{num: @jenre}  #toiret                                                 

      elsif @jenre === 2
        render :show_2, layout: "application", local:{num: @jenre} #sink

      elsif @jenre === 3
        render :show_3, layout: "application", local:{num: @jenre}  #bath
        
      else
        render :show_4, layout: "application"
    end

  end


end
