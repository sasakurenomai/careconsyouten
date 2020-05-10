$(function(){
  
  $('#post_images1').change(function(e){
    
    var file1 = e.target.files[0];
    
    var reader1 = new FileReader();
    
    reader1.onload = (function(e){
      $('#img1').attr('src', e.target.result);
    });

    reader1.readAsDataURL(file1);
    
  });

  $('#post_images2').change(function(e){
    
    var file2 = e.target.files[0];
    
    var reader2 = new FileReader();
    
    reader2.onload = (function(e){
      $('#img2').attr('src', e.target.result);
    });

    reader2.readAsDataURL(file2);
    
  });

  $('#post_images3').change(function(e){
    
    var file3 = e.target.files[0];
    
    var reader3 = new FileReader();
    
    reader3.onload = (function(e){
      $('#img3').attr('src', e.target.result);
    });

    reader3.readAsDataURL(file3);
    
  });

  $('#post_images4').change(function(e){
    
    var file4 = e.target.files[0];
    
    var reader4 = new FileReader();
    
    reader4.onload = (function(e){
      $('#img4').attr('src', e.target.result);
    });

    reader4.readAsDataURL(file4);
    
  });

});


