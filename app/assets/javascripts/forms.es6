$(document).ready(function() {
  $('.disable-on-submit').submit(function(e) {
    $(e.target).find(':submit').attr("disabled", true);
  });
});
