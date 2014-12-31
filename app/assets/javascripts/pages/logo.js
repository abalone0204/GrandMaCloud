$(function () {
  $(".home-logo").on("click",function(){
    var arr = ["Hi", "阿嬤愛你", "阿嬤哩機罵裏都尾", "伐木工", "伐伐伐伐伐伐伐木工" ];
    var key = Math.floor(Math.random() * arr.length);
    $("#gmTalk").replaceWith( '<div id="gmTalk" class="well">'+arr[key]+'</div>');
  });
});