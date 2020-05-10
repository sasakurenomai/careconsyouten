$(function(){

  $('.toilet-link').hover(
  
    function(){
      $(".message").css('display','block');
      $(".top").text('それはトイレ周辺機器');
      $(".middle").text('に関するページだよ');
      $(".bottom").text('');
    },

    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.faucet-link').hover(
  
    function(){
      $(".message").css('display','block');
      $(".top").text('それは洗面台・流し台');
      $(".middle").text('周辺機器に関するページだよ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );
  
  $('.bath-link').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('それは浴室周辺機器に');
      $(".middle").text('関するページだよ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.bulb-link').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('それは照明機器に');
      $(".middle").text('関するページだよ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.plug-link').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('それはコンセント・');
      $(".middle").text('スイッチ周辺機器に');
      $(".bottom").text('関するページだよ');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.door-link').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('それは扉周辺機器に');
      $(".middle").text('関するページだよ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.window-link').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('それは窓周辺機器に');
      $(".middle").text('関するページだよ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.blank1').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('そのページはまだ');
      $(".middle").text('準備中で入れないんだ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.blank2').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('そのページはまだ');
      $(".middle").text('準備中で入れないんだ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );

  $('.log_out').hover(

    function(){
      $(".message").css('display','block');
      $(".top").text('ありがとう');
      $(".middle").text('またきてくれよ');
      $(".bottom").text('');
      
    },
  
    function(){
      $(".message").css('display','none');
      
    }
  );
});