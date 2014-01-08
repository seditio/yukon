<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5>{PHP.L.Log} ({ADMIN_LOG_TOTALDBLOG})</h5>
						<div class="wrapper">
<!-- IF {PHP.usr.isadmin} -->
							<div class="btn-group">
								<a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}" class="ajax btn btn-danger"><i class="fa fa-eraser"></i> {PHP.L.adm_purgeall}</a>
							</div>
<!-- ENDIF -->
							<form action="" class="pull-right">
								{PHP.L.Group}:
								<select name="groups" size="1" onchange="redirect(this)">
<!-- BEGIN: GROUP_SELECT_OPTION -->
									<option value="{ADMIN_LOG_OPTION_VALUE_URL}"{ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
<!-- END: GROUP_SELECT_OPTION -->
								</select>
							</form>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width5">#</th>
										<th class="width15">{PHP.L.Date} (GMT)</th>
										<th class="width10">{PHP.L.Ip}</th>
										<th class="width15">{PHP.L.User}</th>
										<th class="width15">{PHP.L.Group}</th>
										<th class="width40">{PHP.L.Log}</th>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: LOG_ROW -->
									<tr>
										<td class="centerall">{ADMIN_LOG_ROW_LOG_ID}</td>
										<td class="centerall">{ADMIN_LOG_ROW_DATE}</td>
										<td class="centerall"><a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}">{ADMIN_LOG_ROW_LOG_IP}</a></td>
										<td class="centerall">{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
										<td class="centerall"><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
										<td>{ADMIN_LOG_ROW_LOG_TEXT}</td>
									</tr>
<!-- END: LOG_ROW -->
								</tbody>
							</table>
							<p class="text-center">{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_LOG_ON_PAGE}</p>
<!-- IF {ADMIN_LOG_PAGNAV} -->
							<div class="pagination pagination-{PHP.R.admin-config-pagisize} pagination-{PHP.R.admin-config-pagialign}">
								<ul>{ADMIN_LOG_PAGINATION_PREV}{ADMIN_LOG_PAGNAV}{ADMIN_LOG_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->