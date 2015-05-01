$( document ).ready(function() {
  $(".button").click(function(event){
    //The index number of the element that I want to create is equal to the length of the array before the new element is inserted
    var number = $(".chapter-field").length;
    //We clone the element
    var field = $(".chapter-field").last().clone();
    //We define the index number of the new element and we don't use the button any more
    field.html("<fieldset class='chapter-field'><label for='book_chapters_attributes_"+ number + "_title'>Title:</label><input type='text' name='book[chapters_attributes]["+ number +"][title]' id='book_chapters_attributes_" + number + "_title'></fieldset>");
    event.preventDefault();
    //We insert the new element, following the older ones
    $(field).insertBefore('#submit');
  });
});


