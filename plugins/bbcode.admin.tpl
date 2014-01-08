<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-code"></i> BBCodes</h5>
						<div class="wrapper">
							<div class="btn-group">
								<button onclick="" class="btn btn-success btn-{PHP.R.admin-config-buttonsize1}" type="submit"><i class="fa fa-refresh"></i> {PHP.L.Refresh}</button>
							</div>
							<form action="{ADMIN_BBCODE_UPDATE_URL}" method="post">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="coltop width25">{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.Enabled} / {PHP.L.adm_bbcodes_container}</th>
											<th class="coltop width25">{PHP.L.adm_bbcodes_pattern}</th>
											<th class="coltop width20">{PHP.L.adm_bbcodes_replacement}</th>
											<th class="coltop width15">{PHP.L.Plugin} / {PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
											<th class="coltop width15">{PHP.L.Action}</th>
										</tr>
									</thead>
<!-- BEGIN: ADMIN_BBCODE_ROW -->
									<tr>
										<td class="centerall">
											{ADMIN_BBCODE_ROW_NAME}	{ADMIN_BBCODE_ROW_MODE} {ADMIN_BBCODE_ROW_ENABLED} {ADMIN_BBCODE_ROW_CONTAINER}
										</td>
										<td class="centerall">
											{ADMIN_BBCODE_ROW_PATTERN}
										</td>
										<td class="centerall">
											{ADMIN_BBCODE_ROW_REPLACEMENT}
										</td>
										<td class="centerall">
											<span style="display:block;">{ADMIN_BBCODE_ROW_PLUG}</span>
											{ADMIN_BBCODE_ROW_PRIO}
											{ADMIN_BBCODE_ROW_POSTRENDER}
										</td>
										<td class="centerall">
											<button class="btn btn-primary btn-{PHP.R.admin-config-buttonsize2}" type="button" onclick="if(confirm('{PHP.L.adm_bbcodes_confirm}')) location.href='{ADMIN_BBCODE_ROW_DELETE_URL}'">
												<i class="fa fa-times"></i> <span>{PHP.L.Delete}</span>
											</button>
										</td>
									</tr>
<!-- END: ADMIN_BBCODE_ROW -->
								</table>
							</form>

<!-- IF {ADMIN_BBCODE_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_BBCODE_PAGINATION_PREV}{ADMIN_BBCODE_PAGNAV}{ADMIN_BBCODE_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
							<p class="text-{PHP.R.admin-config-infoalign}">{PHP.L.Total}: {ADMIN_BBCODE_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_BBCODE_COUNTER_ROW}</p>

						</div>
					</div>
			
					<div class="block">
						<h5>{PHP.L.adm_bbcodes_new}:</h5>
						<div class="wrapper">
							<form action="{ADMIN_BBCODE_FORM_ACTION}" method="post">
								<table class="table table-bordered">
									<thead>
									<tr>
										<th class="width25">{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.adm_bbcodes_container}</th>
										<th class="width25">{PHP.L.adm_bbcodes_pattern}</th>
										<th class="width20">{PHP.L.adm_bbcodes_replacement}</th>
										<th class="width15">{PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
										<th class="width15">{PHP.L.Action}</th>
									</tr>
									</thead>
									<tr>
										<td class="centerall">
											{ADMIN_BBCODE_NAME} &nbsp;{ADMIN_BBCODE_MODE} &nbsp;{ADMIN_BBCODE_CONTAINER}
										</td>
										<td class="centerall">{ADMIN_BBCODE_PATTERN}</td>
										<td class="centerall">{ADMIN_BBCODE_REPLACEMENT}</td>
										<td class="centerall">{ADMIN_BBCODE_PRIO} &nbsp;{ADMIN_BBCODE_POSTRENDER}</td>
										<td class="centerall"><input type="submit" value="{PHP.L.Add}" /></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					
					<div class="block">
						<h5>{PHP.L.adm_bbcodes_other}:</h5>
						<div class="wrapper">
							<ul class="list-unstyled">
								<li><a href="{ADMIN_BBCODE_URL_CLEAR_CACHE}" onclick="return confirm('{PHP.L.adm_bbcodes_clearcache_confirm}')">{PHP.L.adm_bbcodes_clearcache}</a></li>
<!-- BEGIN: ADMIN_BBCODE_CONVERT -->
								<li><a href="{ADMIN_BBCODE_CONVERT_URL}" onclick="return confirm('{PHP.L.adm_bbcodes_convert_confirm}')">{ADMIN_BBCODE_CONVERT_TITLE}</a></li>
<!-- END: ADMIN_BBCODE_CONVERT -->
							</ul>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->