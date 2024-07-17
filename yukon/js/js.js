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

		}).end().after('<select id="selectmenu" class="form-select">' + optionsList + '</select>');

		$('select#selectmenu').on('change', function() {
			window.location = $(this).val();
		});

	})();

  // Init Bootstrap Tooltips

  let tooltipElements = document.querySelectorAll('[data-bs-toggle="tooltip"]');
  tooltipElements.forEach((el) => {
    new bootstrap.Tooltip(el);
  });

});
