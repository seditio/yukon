$().ready(function() {

	$('#removecookies a').click(function()
	{
		$.removeCookie('hidesidebar', {path: '/'});  // Hide sidebar
		$.removeCookie('hidenavigation', {path: '/'});  // Hide main navigation
		$.removeCookie('fullscreen', {path: '/'});  // Eliminate margins to fill out all space
		$.removeCookie('panelselection', {path: '/'}); // Eliminate leftpanel choice
		return false;
	});

	if ($.cookie('hidesidebar')) {
		$('.container-fluid:first').addClass($.cookie('hidesidebar'));
		var hdss = $('#hidesidebar a').attr('rel');
		var hdss = hdss.split('/', 2);
		$('#hidesidebar a span').text(hdss[1]);
	};
	
	$('#hidesidebar a').click(function()
	{
		if ($('.container-fluid:first').hasClass('sidebar-hidden')) 
		{
			$('.container-fluid:first').removeClass('sidebar-hidden');
			var hdss = $('#hidesidebar a').attr('rel');
			var hdss = hdss.split('/', 2);
			$('#hidesidebar a span').text(hdss[0]);
			$.removeCookie('hidesidebar', {path: '/'});
		} 
		else 
		{
			$('.container-fluid:first').addClass('sidebar-hidden');
			var hdss = $('#hidesidebar a').attr('rel');
			var hdss = hdss.split('/', 2);
			$('#hidesidebar a span').text(hdss[1]);
			$.cookie('hidesidebar', 'sidebar-hidden', {expires: 365, path: '/'});
		}
		return false;
	});
	
	if ($.cookie('hidenavigation')) {
		$('nav div.row-fluid').addClass($.cookie('hidenavigation'));
		var hdns = $('#hidenavigation a').attr('rel');
		var hdns = hdns.split('/', 2);
		$('#hidenavigation a span').text(hdns[1]);
	};
	
	$('#hidenavigation a').click(function()
	{
		if ($('nav div.row-fluid').hasClass('hide')) 
		{
			$('nav div.row-fluid').fadeIn().removeClass('hide');
			var hdns = $('#hidenavigation a').attr('rel');
			var hdns = hdns.split('/', 2);
			$('#hidenavigation a span').text(hdns[0]);
			$.removeCookie('hidenavigation', {path: '/'});
		} 
		else 
		{
			$('nav div.row-fluid').addClass('hide');
			var hdns = $('#hidenavigation a').attr('rel');
			var hdns = hdns.split('/', 2);
			$('#hidenavigation a span').text(hdns[1]);
			$.cookie('hidenavigation', 'hide', {expires: 365, path: '/'});
		}
		return false;
	});

	if ($.cookie('fullscreen')) {
		$('.container-fluid:first').addClass($.cookie('fullscreen'));
		var strs = $('#fullscreen a').attr('rel');
		var strs = strs.split('/', 2);
		$('#fullscreen a span').text(strs[1]);
	};
	
	$('#fullscreen a').click(function()
	{
		if ($('.container-fluid:first').hasClass('exp')) 
		{
			$('.container-fluid:first').removeClass('exp');
			var strs = $('#fullscreen a').attr('rel');
			var strs = strs.split('/', 2);
			$('#fullscreen a span').text(strs[0]);
			$.removeCookie('fullscreen', {path: '/'});
		} 
		else 
		{
			$('.container-fluid:first').addClass('exp');
			var strs = $('#fullscreen a').attr('rel');
			var strs = strs.split('/', 2);
			$('#fullscreen a span').text(strs[1]);
			$.cookie('fullscreen', 'exp', {expires: 365, path: '/'});
		}
		return false;
	});
	
	if ($.cookie('panelselection')) {
		$('#menu div' + $.cookie('panelselection')).addClass('in');
	};

	$('#menu div.panel-heading a').click(function()
	{
		if ($(this).parent().next().hasClass('in'))
		{
			$.removeCookie('panelselection', {path: '/'});
		}
		else
		{
			$.cookie('panelselection', $(this).attr('href'), {expires: 365, path: '/'});
		}
	});
	
	$('li.loginout a').wrapInner('<span />').prepend('<i class="fa fa-lock" /> ').addClass('btn btn-default btn-xs');
	
	$('table.table-striped tr:last-child td').css('border-bottom','1px solid #ddd');
	
	(function() {

		var $menu = $('nav div.row-fluid'),
			optionsList = '<option value="" selected>Go to..</option>';

		$menu.find('div.col-md-2').each(function() {
			var $this   = $(this),
				$anchor = $this.children('a'),
				depth   = $this.parents('div.row-fluid').length - 1,
				indent  = '';

			if( depth ) {
				while( depth > 0 ) {
					indent += ' - ';
					depth--;
				}

			};

			optionsList += '<option value="' + $anchor.attr('href') + '">' + indent + ' ' + $anchor.text() + '</option>';
		}).end()
		.after('<select id="selectmenu">' + optionsList + '</select>');
		
		$('select#selectmenu').on('change', function() {
			window.location = $(this).val();
		});
		
	})();
	
	
	$(".adminconfigmore").each(function() {
		if ($(this).html())
			$(this).wrapInner('<span />');
	});
	
	$('table input[type=checkbox]').css('display','inline-block');
	
});