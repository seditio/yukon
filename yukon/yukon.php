<?php
/* ====================
[BEGIN_COT_THEME]
Name=Yukon
Version=3.00b
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

$R['theme-revision'] = 253;

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

Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/modalbox.css?v='.$R['theme-revision'], 'css', 50);
Resources::addFile($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/styles.css?v='.$R['theme-revision'], 'css', 51);
Resources::addFile($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/responsive.css?v='.$R['theme-revision'], 'css', 52);
Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/jquery.cookie.js', 'js', 99);
Resources::linkFileFooter($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/js.js?v='.$R['theme-revision'], 'js', 100);
