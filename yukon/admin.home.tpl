<!-- BEGIN: MAIN -->

<!-- BEGIN: UPDATE -->
<div class="row">
	<div class="col">
		<div class="alert alert-danger">
			<h4>{PHP.L.adminqv_update_notice}:</h4>
			<p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
		</div>
	</div>
</div>
<!-- END: UPDATE -->

<!-- IF {ERROR_ROW_MSG} -->
<div class="row">
	<div class="col">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	</div>
</div>
<!-- ENDIF -->

<div class="row">

	<div class="col-xl-4">
		<!-- IF {PHP.cot_plugins_active.metrika} -->
		{ADMIN_HOME_METRIKA}
		<!-- ENDIF -->
		<!-- IF {PHP.cot_plugins_active.pagelist} -->
		<div class="block">
			<h2><i class="fa fa-file"></i> {PHP.R.admin-home-best} последних страниц</h2>
			{PHP.R.admin-home-best|sedby_pagelist('pagelist.admin', $this, 'page_date DESC')}
		</div>
		<div class="block">
			<h2><i class="fa fa-file"></i> {PHP.R.admin-home-best} {PHP.L.admin-best}</h2>
			{PHP.R.admin-home-best|sedby_pagelist('pagelist.admin', $this, 'page_count DESC', 'page_count > 0')}
		</div>
		<div class="block">
			<h2><i class="fa fa-file"></i> Новые страницы за {PHP.R.admin-home-recent|cot_declension($this, 'Days')}</h2>
			{PHP.R.admin-home-recent-stamp|sedby_pagelist('pagelist.admin', '', 'page_date DESC', 'page_date > $this')}
		</div>
		<!-- ENDIF -->
	</div>

	<div class="col-xl-4">
		<!-- IF {PHP.cot_plugins_active.adminboard} -->
		<div class="block">
			<h2>{PHP.R.icon-comment}Admin Board / {PHP.sys.now|cot_date('j F', $this)}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					{PHP|cot_adminboard()}
				</div>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {PHP.cot_plugins_active.nbrb} -->
		<div class="block">
			<h2>{PHP.R.icon-right-left}Курсы валют по Нацбанку от {PHP.rate.ondate}</h2>
			<div class="wrapper">
				<ul class="fs-5 fw-semibold text-success-emphasis list-unstyled mb-2">
					<li class="d-flex justify-content-between border-bottom mb-1">
						<span>{PHP.scale.usd} USD</span>
						<span>
							{PHP.rate.usd}
							<sup class="opacity-75">{PHP.rateLast.usd}</sup>
						</span>
					</li>
					<li class="d-flex justify-content-between border-bottom mb-1">
						<span>{PHP.scale.eur} EUR</span>
						<span>
							{PHP.rate.eur}
							<sup class="opacity-75">{PHP.rateLast.eur}</sup>
						</span>
					</li>
					<li class="d-flex justify-content-between border-bottom mb-1">
						<span>{PHP.scale.rub} RUB</span>
						<span>
							{PHP.rate.rub}
							<sup class="opacity-75">{PHP.rateLast.rub}</sup>
						</span>
					</li>
					<li class="d-flex justify-content-between border-bottom mb-1">
						<span>{PHP.scale.cny} CNY</span>
						<span>
							{PHP.rate.cny}
							<sup class="opacity-75">{PHP.rateLast.cny}</sup>
						</span>
					</li>
				</ul>
				<p class="fs-7 text-end m-0">
					Последний курс от {PHP.lastDate}
				</p>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {PHP.cot_plugins_active.shop} -->
		<div class="block">
			<h2>{PHP.R.icon-basket}{PHP.L.shop_recent_orders}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					{PHP|sedby_shop_orderlist()}
					<a href="{PHP|cot_url('admin', 'm=other&p=shop')}" class="btn btn-primary btn-sm mt-3">
						{PHP.R.icon-hand-point-right}{PHP.L.shop_all_orders}
					</a>
				</div>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {PHP.cot_plugins_active.feedback} -->
		{PHP|feedback_widget('feedback.admin.home', 5)}
		<!-- ENDIF -->

		<!-- IF {PHP.cot_plugins_active.comlist} AND {PHP.cot_plugins_active.comments} -->
		{PHP|sedby_comlist('comlist.admin', 4, 'com_date DESC')}
		<!-- ENDIF -->

		<!-- IF {PHP.cot_plugins_active.thanks} -->
		<div class="block">
			<h2>{PHP.R.icon-gears}{PHP.L.thanks_title}</h2>
			<div class="wrapper">
				{PHP|thanks_render_user('thanks.admin.home', 5)}
			</div>
		</div>
		<!-- ENDIF -->
	</div>

	<div class="col-xl-4">
		<!-- IF {PHP.cot_plugins_active.catlist} -->
		<div class="block">
			<h2>{PHP.R.icon-folder-tree}{PHP.L.Sections}</h2>
			<div class="wrapper">
				<div id="cat2list">
					{PHP|sedby_catlist('catlist', '10', 'structure_path ASC', '', '0', 'cat', 'cat2list', '', '')}
				</div>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {PHP.cot_plugins_active.customlogs} AND {PHP.usr.id} == 1 -->
		<div class="block">
			<h2 class="text-truncate">{PHP.R.icon-chart-line}Сторонняя активность на сайте</h2>
			<div class="wrapper bg-warning-subtle">
			  <div class="table-responsive-{PHP.R.yukon-responsive-limit}">
					{PHP|cot_customlogs('customlogs.admin.home', '10', 'cl_date DESC', 'cl_user != 1', 'clpage', '0')}
				</div>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- BEGIN: MAINPANEL -->
		{ADMIN_HOME_MAINPANEL}
		<!-- END: MAINPANEL -->

		<!-- IF {PHP.cot_plugins_active.adminstats} -->
		<!-- BEGIN: NOPARSE -->
		<div class="block">
			<h2>{PHP.R.icon-code}{PHP.L.admin-cache}:</h2>
			<div class="wrapper">
				<table class="table table-striped">
					<tr>
						<td>{PHP.adminstats.cache.title}</td>
						<td class="text-end lower">{PHP.adminstats.cache.value}</td>
					</tr>
					<!-- IF {PHP.adminstats.cache.value} != {PHP.L.Disabled} -->
					<tr>
						<td>{PHP.adminstats.cache_drv.title}</td>
						<td class="text-end">{PHP.adminstats.cache_drv.value}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.adminstats.xtpl_cache.title}</td>
						<td class="text-end lower">{PHP.adminstats.xtpl_cache.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.html_cleanup.title}</td>
						<td class="text-end lower">{PHP.adminstats.html_cleanup.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.cache_index.title}</td>
						<td class="text-end lower">{PHP.adminstats.cache_index.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.cache_page.title}</td>
						<td class="text-end lower">{PHP.adminstats.cache_page.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.cache_forums.title}</td>
						<td class="text-end lower">{PHP.adminstats.cache_forums.value}</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="block">
			<h2>{PHP.R.icon-shield}{PHP.L.Security}:</h2>
			<div class="wrapper">
				<table class="table table-striped">
					<tr>
						<td>{PHP.adminstats.debug_mode.title}</td>
						<td class="text-end lower">{PHP.adminstats.debug_mode.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.display_errors.title}</td>
						<td class="text-end lower">{PHP.adminstats.display_errors.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.ipcheck.title}</td>
						<td class="text-end lower">{PHP.adminstats.ipcheck.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.authcache.title}</td>
						<td class="text-end lower">{PHP.adminstats.authcache.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.useremailduplicate.title}</td>
						<td class="text-end lower">{PHP.adminstats.useremailduplicate.value}</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Extensions}:</h2>
			<div class="wrapper">
				<table class="table table-striped">
					<tr>
						<td>{PHP.adminstats.active_modules.title}</td>
						<td class="text-end">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.active_plugins.title}</td>
						<td class="text-end">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.active_hooks.title}</td>
						<td class="text-end">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="block">
			<h2>{PHP.R.icon-database}{PHP.L.Database}:</h2>
			<div class="wrapper">
				<table class="table table-striped">
					<tr>
						<td>{PHP.adminstats.database.title}</td>
						<td class="text-end">{PHP.adminstats.database.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.mysqlcharset.title}</td>
						<td class="text-end">{PHP.adminstats.mysqlcharset.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.db_counts.title}</td>
						<td class="text-end">{PHP.adminstats.db_counts.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.db_rows.title}</td>
						<td class="text-end">{PHP.adminstats.db_rows.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.db_indexsize.title}</td>
						<td class="text-end">{PHP.adminstats.db_indexsize.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.db_datassize.title}</td>
						<td class="text-end">{PHP.adminstats.db_datassize.value}</td>
					</tr>
					<tr>
						<td>{PHP.adminstats.db_totalsize.title}</td>
						<td class="text-end">{PHP.adminstats.db_totalsize.value}</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- END: NOPARSE -->
		<!-- ENDIF -->
	</div>

</div>

<!-- END: MAIN -->
