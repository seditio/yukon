preloader = $('div#preloader');

$(window).load(function () {
  preloader.fadeOut(200, function() {
		preloader.remove();
	});
});
