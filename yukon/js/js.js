$().ready(function() {

  // Responsive Navigation

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

  // Manage Cookies

  var cookiesSetSettings = { expires: 365, SameSite: 'strict', secure: true };

  $('#removecookies a').click(function(e) {
  	e.preventDefault();
  	Cookies.remove('showsidebar');			// Hide sidebar
  	Cookies.remove('hidenavigation');		// Hide main navigation
  	Cookies.remove('fullscreen');				// Eliminate margins to fill out all space
  	Cookies.remove('panelselection');		// Eliminate leftpanel choice
  	location.reload();
  });

	if (Cookies.get('showsidebar')) {
		$('.container-fluid').addClass(Cookies.get('showsidebar'));
		var hdss = $('#showsidebar a').attr('data-title');
		var hdss = hdss.split('/', 2);
		$('#showsidebar a span').text(hdss[1]);
	};

	$('#showsidebar a').click(function(e) {
    e.preventDefault();
		if ($('.container-fluid').hasClass('sidebar-visible')) {
			$('.container-fluid').removeClass('sidebar-visible');
			var hdss = $('#showsidebar a').attr('data-title');
			var hdss = hdss.split('/', 2);
			$('#showsidebar a span').text(hdss[0]);
			Cookies.remove('showsidebar');
		} else {
			$('.container-fluid').addClass('sidebar-visible');
			var hdss = $('#showsidebar a').attr('data-title');
			var hdss = hdss.split('/', 2);
			$('#showsidebar a span').text(hdss[1]);
			Cookies.set('showsidebar', 'sidebar-visible', cookiesSetSettings);
		}
	});

	if (Cookies.get('hidenavigation')) {
		$('nav#navigation div.row').addClass(Cookies.get('hidenavigation'));
		var hdns = $('#hidenavigation a').attr('data-title');
		var hdns = hdns.split('/', 2);
		$('#hidenavigation a span').text(hdns[1]);
	};

	$('#hidenavigation a').click(function(e) {
    e.preventDefault();
		if ($('nav#navigation div.row').hasClass('d-none')) {
			$('nav#navigation div.row').fadeIn().removeClass('d-none').addClass('d-flex');
			var hdns = $('#hidenavigation a').attr('data-title');
			var hdns = hdns.split('/', 2);
			$('#hidenavigation a span').text(hdns[0]);
			Cookies.remove('hidenavigation');
		} else {
			$('nav#navigation div.row').addClass('d-none');
			var hdns = $('#hidenavigation a').attr('data-title');
			var hdns = hdns.split('/', 2);
			$('#hidenavigation a span').text(hdns[1]);
			Cookies.set('hidenavigation', 'd-none', cookiesSetSettings);
		}
	});

	if (Cookies.get('fullscreen')) {
		$('.container-fluid').addClass(Cookies.get('fullscreen'));
		var strs = $('#fullscreen a').attr('data-title');
		var strs = strs.split('/', 2);
		$('#fullscreen a span').text(strs[1]);
	};

	$('#fullscreen a').click(function(e) {
    e.preventDefault();
		if ($('.container-fluid:first').hasClass('exp')) {
			$('.container-fluid:first').removeClass('exp');
			var strs = $('#fullscreen a').attr('data-title');
			var strs = strs.split('/', 2);
			$('#fullscreen a span').text(strs[0]);
			Cookies.remove('fullscreen');
		} else {
			$('.container-fluid:first').addClass('exp');
			var strs = $('#fullscreen a').attr('data-title');
			var strs = strs.split('/', 2);
			$('#fullscreen a span').text(strs[1]);
			Cookies.set('fullscreen', 'exp', cookiesSetSettings);
		}
	});

	if (Cookies.get('panelselection')) {
		$('div' + Cookies.get('panelselection')).addClass('show').prev().removeClass('collapsed');
	};

	$('#menu div.accordion-button').click(function() {
		Cookies.set('panelselection', $(this).attr('data-bs-target'), cookiesSetSettings);
	});

  // Fix Form Classes

	$('div#content div.wrapper table input[type=file]').addClass('form-control');
	$('div#content div.wrapper table input[type=text]').addClass('form-control');
	$('div#content div.wrapper table textarea').addClass('form-control');
	$('table input[type=checkbox]').css('display','inline-block');
	$('div.input-group input[type=checkbox]').addClass('form-check-input');

	$('select').addClass('form-select');
	$('select:not(#selectmenu)').addClass('w-auto me-1 d-inline-block');
	$('div.input-group > select').removeClass('me-1');

  // Init Bootstrap Tooltips

  let tooltipElements = document.querySelectorAll('[data-bs-toggle="tooltip"]');
  tooltipElements.forEach((el) => {
    new bootstrap.Tooltip(el);
  });
});
