<!-- BEGIN: MAIN -->

<!-- BEGIN: UPDATE -->
			<div class="row-fluid">
				<div class="col-md-12">
					<div class="alert alert-danger">
						<h4>{PHP.L.adminqv_update_notice}:</h4>
						<p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
					</div>
				</div>
			</div>
<!-- END: UPDATE -->

<!-- IF {ERROR_ROW_MSG} -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
				</div>
			</div>
<!-- ENDIF -->

			<div class="row-fluid">
				<div class="col-md-8">
<!-- BEGIN: MAINPANEL -->
					{ADMIN_HOME_MAINPANEL}
<!-- END: MAINPANEL -->
<!-- IF {PHP.cot_plugins_active.pagelist} -->
					<div class="block">
						<h5><i class="fa fa-comments"></i> {PHP.R.Topbest} {PHP.L.Topbestpages}</h5>
{PHP.R.Topbest|pagelist('pagelist.admin',$this,'page_count DESC','page_count > 0','','','','TRUE','','TRUE')}
					</div>
					<div class="block">
						<h5><i class="fa fa-comments"></i> {PHP.R.Toprecent} {PHP.L.Toprecentpages} за {PHP.R.Toprecent} дней</h5>
{PHP.R.Toprecent|pagelist('pagelist.admin',$this,'page_count DESC','page_date > (UNIX_TIMESTAMP() - 864000)','','','','TRUE','','TRUE')}
					</div>
<!-- ENDIF -->
				</div>
				<div class="col-md-4">
<!-- IF {PHP.cot_plugins_active.pagecom} -->
{PHP|pagecom('pagecom.admin','5','0','date','','','0')}
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.userinfo} -->
					<div class="block">
{PHP|userinfo_lastseen('userinfo.lastseen')}
					</div>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.adminstats} -->
					<div class="block">
						<h5><i class="fa fa-code"></i> {PHP.L.Database}:</h5>
						<div class="wrapper">
							<table class="table table-striped">
								<tr>
									<td>{PHP.adminstats.database.title}</td>
									<td class="text-right">{PHP.adminstats.database.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.mysqlcharset.title}</td>
									<td class="text-right">{PHP.adminstats.mysqlcharset.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.db_counts.title}</td>
									<td class="text-right">{PHP.adminstats.db_counts.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.db_rows.title}</td>
									<td class="text-right">{PHP.adminstats.db_rows.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.db_indexsize.title}</td>
									<td class="text-right">{PHP.adminstats.db_indexsize.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.db_datassize.title}</td>
									<td class="text-right">{PHP.adminstats.db_datassize.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.db_totalsize.title}</td>
									<td class="text-right">{PHP.adminstats.db_totalsize.value}</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="block">
						<h5><i class="fa fa-puzzle-piece"></i> {PHP.L.Extensions}:</h5>
						<div class="wrapper">
							<table class="table table-striped">
								<tr>
									<td>{PHP.adminstats.active_modules.title}</td>
									<td class="text-right">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.active_plugins.title}</td>
									<td class="text-right">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.active_hooks.title}</td>
									<td class="text-right">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="block">
						<h5><i class="fa fa-code"></i> {PHP.L.Cache}:</h5>
						<div class="wrapper">
							<table class="table table-striped">
								<tr>
									<td>{PHP.adminstats.cache.title}</td>
									<td class="text-right lower">{PHP.adminstats.cache.value}</td>
								</tr>
<!-- IF {PHP.adminstats.cache.value} != {PHP.L.Disabled} -->
								<tr>
									<td>{PHP.adminstats.cache_drv.title}</td>
									<td class="text-right">{PHP.adminstats.cache_drv.value}</td>
								</tr>
<!-- ENDIF -->
								<tr>
									<td>{PHP.adminstats.xtpl_cache.title}</td>
									<td class="text-right lower">{PHP.adminstats.xtpl_cache.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.html_cleanup.title}</td>
									<td class="text-right lower">{PHP.adminstats.html_cleanup.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.cache_index.title}</td>
									<td class="text-right lower">{PHP.adminstats.cache_index.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.cache_page.title}</td>
									<td class="text-right lower">{PHP.adminstats.cache_page.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.cache_forums.title}</td>
									<td class="text-right lower">{PHP.adminstats.cache_forums.value}</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="block">
						<h5><i class="fa fa-code"></i> {PHP.L.Security}:</h5>
						<div class="wrapper">
							<table class="table table-striped">
								<tr>
									<td>{PHP.adminstats.debug_mode.title}</td>
									<td class="text-right lower">{PHP.adminstats.debug_mode.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.display_errors.title}</td>
									<td class="text-right lower">{PHP.adminstats.display_errors.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.ipcheck.title}</td>
									<td class="text-right lower">{PHP.adminstats.ipcheck.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.authcache.title}</td>
									<td class="text-right lower">{PHP.adminstats.authcache.value}</td>
								</tr>
								<tr>
									<td>{PHP.adminstats.useremailduplicate.title}</td>
									<td class="text-right lower">{PHP.adminstats.useremailduplicate.value}</td>
								</tr>
							</table>
						</div>
					</div>
<!-- ENDIF -->
				</div>
			</div>

<!-- END: MAIN -->