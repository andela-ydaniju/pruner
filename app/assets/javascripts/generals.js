//= require materialize

$(document).ready(function(){
	var clip = new ZeroClipboard($(".clip_button"));
	$(".clip_button").click(function() {
		clip = new ZeroClipboard($(".clip_button"));
    	M.toast(
			"Link copied to Clipboard",
    		3000, "blue white-text squared"
		);
  	});
});
