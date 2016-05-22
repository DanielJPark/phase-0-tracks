$(document).ready(function(){
  
  $("#z4button1").click(function(){
    $("#div-z4").animate({right: '300px'});
  });

  $("#z4button2").click(function(){
    $("#div-z4").animate({left: '300px'});
  });

    $("#235mbutton").click(function(){
    $("#div-235m").fadeToggle();
  });

  $("#m3button1").click(function(){
    $("#div-m3").hide();
  });

  $("#m3button2").click(function(){
    $("#div-m3").show();
  });

  $("#i8button").mousedown(function(){
    $("#div-i8").after("What a beautiful BMW I8. ");
  });

});