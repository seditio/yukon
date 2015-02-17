<?php

defined('COT_CODE') or die('Wrong URL');

// Redefine Pagination

$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_prev'] = '<li class="previous"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';
$R['link_pagenav_next'] = '<li class="next"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_first'] = '<li class=""><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_last'] = '<li class=""><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_gap'] = '<li class="gap"><span>...</span></li>';

$R['input_text_metatitle'] = '<textarea name="{$name}" rows="2" cols="64" maxlength="255" class="input-block-level">{$value}</textarea>';
$R['input_text_metadesc'] = '<textarea name="{$name}" rows="2" cols="64" maxlength="255" class="input-block-level">{$value}</textarea>';

//	Template Settings

$R['admin-config-buttonsize1'] = 'md';		// Global top buttons size: xs, sm, lg
$R['admin-config-buttonsize2'] = 'xs';		// Global action buttons size: xs, sm, lg

$R['admin-config-pagialign'] = 'center';	// Global pagination alignment
$R['admin-config-pagisize'] = 'sm';			// Global pagination size

$R['admin-config-infoalign'] = 'center';	// Global list info alignment

$R['admin-config-icons'] = '1';				// Display item icons (global: config, extensions, users, other)
$R['admin-config-descs'] = '1';				// Display item descriptions (global: config, extensions, users, other)

// Recent Activities
$R['Recent'] = '14';

// Top Lists @ Home Page
$R['Topbest'] = '10';
$R['Toprecent'] = '10';

// User manager settings

$R['Usermanager'] = '';