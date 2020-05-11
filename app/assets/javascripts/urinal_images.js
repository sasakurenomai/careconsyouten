$(function(){
  
  $('#urinal_urinal_images').change(function(e){
    
    var file1 = e.target.files[0];
    var file2 = e.target.files[1];
    var file3 = e.target.files[2];
    var file4 = e.target.files[3];
    var reader1 = new FileReader();
    var reader2 = new FileReader();
    var reader3 = new FileReader();
    var reader4 = new FileReader();

    reader1.onload = (function(e){
      $('#img1').attr('src', e.target.result);
    });
    reader2.onload = (function(e){
      $('#img2').attr('src', e.target.result);
    });
    reader3.onload = (function(e){
      $('#img3').attr('src', e.target.result);
    });
    reader4.onload = (function(e){
      $('#img4').attr('src', e.target.result);
    });

    reader1.readAsDataURL(file1);
    reader2.readAsDataURL(file2);
    reader3.readAsDataURL(file3);
    reader4.readAsDataURL(file4);
  });

});


