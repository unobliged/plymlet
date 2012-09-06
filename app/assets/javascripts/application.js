// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {

  $("span.passage-word").click(function() {
    var filterVal = $(this).text();
    if(filterVal == "Show All Words") {
      $("li.hidden").fadeIn(0).removeClass('hidden');
    } else {
        if(filterVal == "Hide My Words") {
          $("li.vocab-item").each(function() {
            var filterVal3 = $(this).find(".btn").attr("value");
            if(filterVal3=="Remove from My Words") {
              $(this).fadeOut(0).addClass('hidden');
            }
          });
        } else {
            $("li.vocab-item").each(function() {
              var filterVal2 = $(this).children("p.vocab-word").text();
              if(filterVal2==filterVal) {
                $(this).fadeIn(0).removeClass('hidden');
              } else {
                $(this).fadeOut(0).addClass('hidden');
                }
            });
          }
      }
  });
});

