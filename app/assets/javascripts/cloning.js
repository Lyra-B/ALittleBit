$( document ).ready(function() {
  $(".button").click(function(event){
    var field = $(".chapter-field").last().clone();
    event.preventDefault();
    $(field).insertBefore('#submit');
  })
});