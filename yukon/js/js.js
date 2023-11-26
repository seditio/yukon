$(window).on("load", function() {
	function hidePreloader() {
			preloader = $('div#preloader');
			preloaderFadeOutTime = 500;
			preloader.fadeOut(preloaderFadeOutTime, function() {
				preloader.remove();
			});
	};
	hidePreloader();
});

$().ready(function() {

	(function() {

		var $menu = $('nav#navigation div.row'),
			optionsList = '<option value="" selected>' + $('nav#navigation').attr('data-title') + '</option>';

		$menu.find('div.col-md-2').each(function() {

			var $this = $(this),
				$anchor = $this.children('a'),
				depth   = $this.parents('div.row').length - 1,
				indent  = '';

			if (depth) {
				while (depth > 0) {
					indent += ' &#150; ';
					depth--;
				}
			};

			optionsList += '<option value="' + $anchor.attr('href') + '">' + indent + $anchor.text() + '</option>';

		}).end().after('<select id="selectmenu">' + optionsList + '</select>');

		$('select#selectmenu').on('change', function() {
			window.location = $(this).val();
		});

	})();

	$('#removecookies a').click(function() {
		$.removeCookie('showsidebar', { path: '/;SameSite=Lax', secure: true });			// Hide sidebar
		$.removeCookie('hidenavigation', { path: '/;SameSite=Lax', secure: true });	// Hide main navigation
		$.removeCookie('fullscreen', { path: '/;SameSite=Lax', secure: true });			// Eliminate margins to fill out all space
		$.removeCookie('panelselection', { path: '/;SameSite=Lax', secure: true });	// Eliminate leftpanel choice
		location.reload();
		return false;
	});

	if ($.cookie('showsidebar')) {
		$('.container-fluid').addClass($.cookie('showsidebar'));
		var hdss = $('#showsidebar a').attr('data-title');
		var hdss = hdss.split('/', 2);
		$('#showsidebar a span').text(hdss[1]);
	};

	$('#showsidebar a').click(function() {
		if ($('.container-fluid').hasClass('sidebar-visible')) {
			$('.container-fluid').removeClass('sidebar-visible');
			var hdss = $('#showsidebar a').attr('data-title');
			var hdss = hdss.split('/', 2);
			$('#showsidebar a span').text(hdss[0]);
			$.removeCookie('showsidebar', { path: '/;SameSite=Lax', secure: true });
		}
		else {
			$('.container-fluid').addClass('sidebar-visible');
			var hdss = $('#showsidebar a').attr('data-title');
			var hdss = hdss.split('/', 2);
			$('#showsidebar a span').text(hdss[1]);
			$.cookie('showsidebar', 'sidebar-visible', { expires: 365, path: '/;SameSite=Lax', secure: true });
		}
		return false;
	});

	if ($.cookie('hidenavigation')) {
		$('nav#navigation div.row').addClass($.cookie('hidenavigation'));
		var hdns = $('#hidenavigation a').attr('data-title');
		var hdns = hdns.split('/', 2);
		$('#hidenavigation a span').text(hdns[1]);
	};

	$('#hidenavigation a').click(function() {
		if ($('nav#navigation div.row').hasClass('d-none')) {
			$('nav#navigation div.row').fadeIn().removeClass('d-none').addClass('d-flex');
			var hdns = $('#hidenavigation a').attr('data-title');
			var hdns = hdns.split('/', 2);
			$('#hidenavigation a span').text(hdns[0]);
			$.removeCookie('hidenavigation', { path: '/;SameSite=Lax', secure: true });
		}
		else {
			$('nav#navigation div.row').addClass('d-none');
			var hdns = $('#hidenavigation a').attr('data-title');
			var hdns = hdns.split('/', 2);
			$('#hidenavigation a span').text(hdns[1]);
			$.cookie('hidenavigation', 'd-none', { expires: 365, path: '/;SameSite=Lax', secure: true });
		}
		return false;
	});

	if ($.cookie('fullscreen')) {
		$('.container-fluid').addClass($.cookie('fullscreen'));
		var strs = $('#fullscreen a').attr('data-title');
		var strs = strs.split('/', 2);
		$('#fullscreen a span').text(strs[1]);
	};

	$('#fullscreen a').click(function() {
		if ($('.container-fluid:first').hasClass('exp')) {
			$('.container-fluid:first').removeClass('exp');
			var strs = $('#fullscreen a').attr('data-title');
			var strs = strs.split('/', 2);
			$('#fullscreen a span').text(strs[0]);
			$.removeCookie('fullscreen', { path: '/;SameSite=Lax', secure: true });
		}
		else {
			$('.container-fluid:first').addClass('exp');
			var strs = $('#fullscreen a').attr('data-title');
			var strs = strs.split('/', 2);
			$('#fullscreen a span').text(strs[1]);
			$.cookie('fullscreen', 'exp', { expires: 365, path: '/;SameSite=Lax', secure: true });
		}
		return false;
	});

	if ($.cookie('panelselection')) {
		$('div' + $.cookie('panelselection')).addClass('show').prev().removeClass('collapsed');
	};

	$('#menu div.accordion-button').click(function() {
		$.cookie('panelselection', $(this).attr('data-bs-target'), { expires: 365, path: '/;SameSite=Lax', secure: true });
	});

	$('div#content div.wrapper table input[type=file]').addClass('form-control');
	$('div#content div.wrapper table input[type=text]').addClass('form-control');
	$('div#content div.wrapper table textarea').addClass('form-control');
	$('table input[type=checkbox]').css('display','inline-block');
	$('div.input-group input[type=checkbox]').addClass('form-check-input');

	$('select').addClass('form-select');
	$('select:not(#selectmenu)').addClass('w-auto me-1 d-inline-block');
	$('div.input-group > select').removeClass('me-1');

	const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
	const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
});
