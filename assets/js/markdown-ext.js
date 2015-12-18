$(document).ready(function(){
    $(".dwExpand").addClass('ui-closed').css('cursor','pointer');
    $(".dwExpand").nextUntil(".dwExpand2").slideToggle();
    $(".dwExpand").click(function() {
      
      $(this).nextUntil(".dwExpand2").slideToggle();
      $(this).toggleClass('ui-closed ui-open');
      });

});


$.expr[':'].external = function(obj){
          return !obj.href.match(/^mailto\:/)
                  && (obj.hostname != location.hostname);
      };

$(function(){
// Add 'external' CSS class to all external links
$('a:external').addClass('external');

// turn target into target=_blank for elements w external class
$(".external").attr('target','_blank');

})

$(window).scroll(function() {
    if ($(this).scrollTop() > 50 ) {
        $('.scrolltop:hidden').stop(true, true).fadeIn();
    } else {
        $('.scrolltop').stop(true, true).fadeOut();
    }
});
$(function(){$(".scroll").click(function(){$("html,body").animate({scrollTop:0},"1000");return false})})