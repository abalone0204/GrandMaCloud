$(function() {
  var stars = $(".rating i"),
    rateVal = $(".rate-val");
  stars.hover(function() {
    console.log($(this).data("rate"));
    rateVal.val($(this).data("rate"));
    rateVal.change();
  });
  rateVal.change(function() {
    stars.each(function(){
      $this= $(this);
      if (rateVal.val()>= $this.data("rate")) {
        $this.removeClass("fa-star-o");
        $this.addClass("fa-star");
      } else{
        $this.removeClass("fa-star");
        $this.addClass("fa-star-o");
      }
    });
  });

});