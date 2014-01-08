$().ready(function() {

	$('#rem a').click(function()
	{
		$.cookie('hds', null);  // Hide sidebar
		$.cookie('hdn', null);  // Hide main navigation
		$.cookie('str', null);  // Eliminate margins to fill out all space
		$.cookie('acct', null); // Eliminate leftpanel choice
		return false;
	});

	if ($.cookie('hds')) {
		$('.container-fluid:first').addClass($.cookie('hds'));
		var hdss = $('#hds a').attr('rel');
		var hdss = hdss.split('/', 2);
		$('#hds a span').text(hdss[1]);
	};
	
	$('#hds a').click(function()
	{
		if ($('.container-fluid:first').hasClass('menu-hidden')) 
		{
			$('.container-fluid:first').removeClass('menu-hidden');
			var hdss = $('#hds a').attr('rel');
			var hdss = hdss.split('/', 2);
			$('#hds a span').text(hdss[0]);
			$.cookie('hds', null);
		} 
		else 
		{
			$('.container-fluid:first').addClass('menu-hidden');
			var hdss = $('#hds a').attr('rel');
			var hdss = hdss.split('/', 2);
			$('#hds a span').text(hdss[1]);
			$.cookie('hds', 'menu-hidden', {expires: 365, path: '/'});
		}
		return false;
	});
	
	if ($.cookie('hdn')) {
		$('nav div.row-fluid').addClass($.cookie('hdn'));
		var hdns = $('#hdn a').attr('rel');
		var hdns = hdns.split('/', 2);
		$('#hdn a span').text(hdns[1]);
	};
	
	$('#hdn a').click(function()
	{
		if ($('nav div.row-fluid').hasClass('hide')) 
		{
			$('nav div.row-fluid').removeClass('hide');
			var hdns = $('#hdn a').attr('rel');
			var hdns = hdns.split('/', 2);
			$('#hdn a span').text(hdns[0]);
			$.cookie('hdn', null);
		} 
		else 
		{
			$('nav div.row-fluid').addClass('hide');
			var hdns = $('#hdn a').attr('rel');
			var hdns = hdns.split('/', 2);
			$('#hdn a span').text(hdns[1]);
			$.cookie('hdn', 'hide', {expires: 365, path: '/'});
		}
		return false;
	});

	if ($.cookie('str')) {
		$('.container-fluid:first').addClass($.cookie('str'));
		var strs = $('#str a').attr('rel');
		var strs = strs.split('/', 2);
		$('#str a span').text(strs[1]);
	};
	
	$('#str a').click(function()
	{
		if ($('.container-fluid:first').hasClass('exp')) 
		{
			$('.container-fluid:first').removeClass('exp');
			var strs = $('#str a').attr('rel');
			var strs = strs.split('/', 2);
			$('#str a span').text(strs[0]);
			$.cookie('str', null);
		} 
		else 
		{
			$('.container-fluid:first').addClass('exp');
			var strs = $('#str a').attr('rel');
			var strs = strs.split('/', 2);
			$('#str a span').text(strs[1]);
			$.cookie('str', 'exp', {expires: 365, path: '/'});
		}
		return false;
	});
	
	if ($.cookie('acct')) {
		$('#menu div' + $.cookie('acct')).addClass('in');
	};

	$('#menu div.accordion-heading').click(function()
	{
		$.cookie('acct', $(this).find('a').attr('href'), {expires: 365, path: '/'});
	});
	
	$('li.loginout a').wrapInner('<span />').prepend('<i class="fa fa-lock" /> ').addClass('btn btn-default btn-xs');

//	$('div.block').each(function(){
//		$(this).children(':gt(0)').wrapAll('<div class="wrapper" />');
//	});
	
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
	
});