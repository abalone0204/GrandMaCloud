$(function(){
  var flag = 0,
      progressBar = $(".progress-bar");
  progressBar.animate({width: "100%"},  3000, "linear", function(){
    setTimeout(function(){
     redirectToStartChat(); 
    }, 1000 );
  });
  function redirectToStartChat(){
    urlArr = window.location.href.split("/");
    urlArr[urlArr.length-1] = "chat";
    url = urlArr.join("/");
    window.location.replace(url);
  }

});