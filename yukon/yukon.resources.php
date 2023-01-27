<?php
/**
 * Yukon Admin Theme / Resource Loader
 *
 * @package yukon
 * @author seditio.by
 * @copyright Copyright (c) seditio.by 2023
 */

(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

// Status indicators
$R['admin_code_missing'] = '<span class="extension missing text-danger fw-semibold">'.$L['adm_missing'].'</span>';
$R['admin_code_notinstalled'] = '<span class="extension notinstalled text-danger-emphasis fw-semibold">'.$L['adm_notinstalled'].'</span>';
$R['admin_code_partrunning'] = '<span class="extention partrunning text-warning fw-semibold">'.$L['adm_partrunning'].'</span>';
$R['admin_code_paused'] = '<span class="extension paused text-primary fw-semibold">'.$L['adm_paused'].'</span>';
$R['admin_code_present'] = '<span class="extension present text-success-emphasis fw-semibold">'.$L['adm_present'].'</span>';
$R['admin_code_running'] = '<span class="extension running text-success fw-semibold">'.$L['adm_running'].'</span>';

// Extrafields
$R['admin_exflds_array'] = '{$tplfile}: {$tags}; ';

// Breadcrumbs
$R['breadcrumbs_container'] = '{$crumbs}';
$R['breadcrumbs_first'] = '<ol class="breadcrumb">';
$R['breadcrumbs_crumb'] = '<li class="breadcrumb-item">{$crumb}</li>';
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_plain'] = '{$title}';
$R['breadcrumbs_last'] = '<li class="breadcrumb-item active">{$crumb}</li>';
$R['breadcrumbs_separator'] = '';

// My Custom RC
$R['link_pagenav_main'] = '<li class="page-item"><a class="page-link px-3" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_current'] = '<li class="page-item active"><a class="page-link px-3" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_prev'] = '<li class="page-item previous"><a class="page-link px-3" href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';
$R['link_pagenav_next'] = '<li class="page-item next"><a class="page-link px-3" href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_first'] = '<li class="page-item first"><a class="page-link px-3" href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_last'] = '<li class="page-item last"><a class="page-link px-3" href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_gap'] = '<li class="page-item gap"><span class="page-link">...</span></li>';

$R['input_text_metatitle'] = '<textarea name="{$name}" rows="2" cols="64" maxlength="65" class="input-block-level">{$value}</textarea>';
$R['input_text_metadesc'] = '<textarea name="{$name}" rows="2" cols="64" maxlength="155" class="input-block-level">{$value}</textarea>';
