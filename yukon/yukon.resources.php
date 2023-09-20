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
$R['breadcrumbs_container'] = '<ol class="breadcrumb">{$crumbs}</ol>';
$R['breadcrumbs_first'] = '<li class="breadcrumb-item">{$crumb}</li>';
$R['breadcrumbs_crumb'] = '<li class="breadcrumb-item">{$crumb}</li>';
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_plain'] = '{$title}';
$R['breadcrumbs_last'] = '<li class="breadcrumb-item active">{$crumb}</li>';
$R['breadcrumbs_separator'] = '';

// My Custom RC
$R['link_pagenav_current']  = '<li class="page-item active"><a href="{$url}" class="page-link {$class}" {$rel}>{$num}</a></li>';

$R['link_pagenav_first']    = '<li class="page-item"><a href="{$url}" class="page-link {$class}" {$rel}>'.$R['icon-arrow-left'].'</a></li>';
$R['link_pagenav_prev']     = '<li class="page-item"><a href="{$url}" class="page-link {$class}" {$rel}>'.$R['icon-chevron-left'].'</a></li>';
$R['link_pagenav_main']     = '<li class="page-item"><a href="{$url}" class="page-link {$class}" {$rel}>{$num}</a></li>';
$R['link_pagenav_next']     = '<li class="page-item"><a href="{$url}" class="page-link {$class}" {$rel}>'.$R['icon-chevron-right'].'</a></li>';
$R['link_pagenav_last']     = '<li class="page-item"><a href="{$url}" class="page-link {$class}" {$rel}>'.$R['icon-arrow-right'].'</a></li>';

$R['link_pagenav_gap']      = '<li class="page-item disabled"><span class="page-link">...</span></li>';
