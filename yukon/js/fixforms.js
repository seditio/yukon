// Fix Form Classes

$('div#content div.wrapper table input[type=file]').addClass('form-control');
$('div#content div.wrapper table input[type=text]').addClass('form-control');
$('div#content div.wrapper table textarea').addClass('form-control');
$('table input[type=checkbox]').css('display','inline-block');
$('div.input-group input[type=checkbox]').addClass('form-check-input');

$('select').addClass('form-select');
$('select:not(#selectmenu)').addClass('w-auto me-1 d-inline-block');
$('div.input-group > select').removeClass('me-1');
