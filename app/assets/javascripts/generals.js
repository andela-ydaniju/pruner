//= require materialize

$(document).ready(function () {
  var clip = new ZeroClipboard($(".clip_button"));
  $(".clip_button").click(function () {
		clip = new ZeroClipboard($(".clip_button"));

    M.toast({ html: 'Link copied to Clipboard', displayLength: 3000, classes: 'blue white-text squared' });
  });
});
