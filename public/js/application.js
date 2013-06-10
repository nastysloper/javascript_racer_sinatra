$(document).ready(function() {
  $(document).on('keyup', function(event) {
    if (event.keyCode == 70) {
      var position = parseInt($('.pacman').css('left'));
      if (position >= 810) {
        $(document).unbind('keyup');
        var complete = confirm("Pacman wins! Play again?");
          if (complete == true) {
            location.reload();
          }
      } else {
        $(".pacman").animate({left: "+=20px"}, 80);
        $(".playerone, .container, .track").animate({width: "-=20px"}, 80);
      }
    }
   else if (event.keyCode == 74) {
      var position = parseInt($('.batman').css('left'));
      if (position >= 810) {
        // var complete = confirm("NANANANANA BATMAN wins! Play again?");
        //   if (complete == true) {
        //     location.reload();
        //   }
        $("#track").after("<h2>Player 2 wins!</h2>");
        $(document).unbind('keyup');
      } else {
      $(".batman").animate({left: "+=20px"}, 80);
      $(".playertwo, .container, .track").animate({width: "-=20px"}, 80);
      }
    }
  });
});
