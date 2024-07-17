<?php
/* ====================
[BEGIN_COT_THEME]
Name=Yukon
Version=3.20b
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Yukon Admin Theme
 *
 * @package yukon
 * @author seditio.by
 * @copyright Copyright (c) seditio.by 2023
 */

(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');
include_once cot_incfile('icons', 'plug', 'rc');
require_once cot_rc($cfg['themes_dir'].'/admin/yukon/yukon.resources.php');

$R['theme-revision'] = 261;

$R['userimg_img'] = '<img src="{$src}" alt="' . $L['Avatar'] . '" class="img-fluid {$class}" />';
$R['userimg_default_avatar'] = '<img src="datas/defaultav/default.png" alt="' . $L['Avatar'] . '" class="img-fluid" />';

function sedby_get_ip() {
	// if user uses shared internet
	if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
		return $_SERVER['HTTP_CLIENT_IP'];
	}
	// if user is behind proxy
	elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
		return $_SERVER['HTTP_X_FORWARDED_FOR'];
	}
	// if user has remote address
	else {
		return $_SERVER['REMOTE_ADDR'];
	}
}

function sedby_get_browser($user_agent) {
		if (strpos($user_agent, 'Opera') || strpos($user_agent, 'OPR/')) return 'Opera';
		elseif (strpos($user_agent, 'Edge')) return 'MS Edge';
		elseif (strpos($user_agent, 'Chrome')) return 'Google Chrome';
		elseif (strpos($user_agent, 'Safari')) return 'Apple Safari';
		elseif (strpos($user_agent, 'Firefox')) return 'Mozilla Firefox';
		elseif (strpos($user_agent, 'MSIE') || strpos($user_agent, 'Trident/7')) return 'MS IE';
		return 'Other';
}
$browser = sedby_get_browser($_SERVER['HTTP_USER_AGENT']);

function sedby_get_os($user_agent){
	if (strpos($user_agent, 'Linux')) return 'Linus';
	elseif (strpos($user_agent, 'Win')) return 'Windows';
	elseif (strpos($user_agent, 'Mac')) return 'Mac';
	return 'Other';
}
$os = sedby_get_os($_SERVER['HTTP_USER_AGENT']);

// Template Settings
$R['admin-pagination-nav-class'] = 'mt-3';																					// Navigation parent class
$R['admin-pagination-list-class'] = 'pagination-sm justify-content-xl-center m-0';	// Navigation list class
$R['admin-pagination-p-class'] = 'text-center mt-3 mb-0';														// Navigation info paragraph class

$R['admin-table-responsive-container-class'] = 'table-responsive';	// Responsive table wrapper class
$R['admin-table-class'] = 'table table-bordered table-hover';				// Global table class
$R['admin-table-tr-class'] = 'text-center';													// Optional global tr class

$R['admin-button-group-margin'] = 3;                  // Beetween button table and immediate button group (above and below)
$R['admin-top-button-size-class'] = 'btn-sm';	        // Top button size class
$R['admin-button-size-class'] = 'btn-sm';	            // Main button class
$R['admin-button-danger-class'] = 'btn-danger';	      // Danger button class
$R['admin-button-warning-class'] = 'btn-warning';	    // Danger button class
$R['admin-button-primary-class'] = 'btn-primary';	    // Primary button class
$R['admin-button-secondary-class'] = 'btn-secondary';	// Secondary button class
$R['admin-button-success-class'] = 'btn-success';	    // Success button class

// Misc
$R['admin-home-best'] = 10;
$R['admin-home-recent'] = 14;
$R['admin-home-recent-stamp'] = $sys['now'] - $R['admin-home-recent'] * 86400;

Resources::linkFile($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/preloader.css?v='.$R['theme-revision'], 'css', 1);

Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/modalbox.css?v='.$R['theme-revision'], 'css', 50);
Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/styles.css?v='.$R['theme-revision'], 'css', 51);
Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/responsive.css?v='.$R['theme-revision'], 'css', 52);

// Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/js.cookie.min.js', 'js', 80);
// Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/cookies.js', 'js', 81);

Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/localstorage.js?v='.$R['theme-revision'], 'js', 96);

Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/fixforms.js?v='.$R['theme-revision'], 'js', 97);
Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/js.js?v='.$R['theme-revision'], 'js', 98);

Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/preloader.js?v='.$R['theme-revision'], 'js', 99);
