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
				<div class="col-lg-4">
<!-- BEGIN: MAINPANEL -->
					{ADMIN_HOME_MAINPANEL}
<!-- END: MAINPANEL -->
				</div>

				<div class="col-lg-4">
<!-- IF {PHP.cot_plugins_active.customlogs} -->
			    <div class="block">
			      <h2 class="text-truncate">{PHP.R.icon-chart-simple}Сторонняя активность на сайте</h2>
			{PHP|cot_customlogs('customlogs.admin.home', '10', 'cl_date DESC', 'cl_user != 1', 'clpage', '0')}
			    </div>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.adminstats} -->
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
<!-- ENDIF -->
				</div>
				<div class="col-lg-4">
<!-- IF {PHP.cot_plugins_active.adminstats} -->
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
<!-- ENDIF -->
				</div>
			</div>

<!-- END: MAIN -->
