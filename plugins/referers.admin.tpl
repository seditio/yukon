<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-bar-chart-o"></i> {PHP.L.Referers}</h5>
						<div class="wrapper">
<!-- IF {PHP.usr.isadmin} -->
							<div class="btn-group item-control">
								<a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-primary"><i class="fa fa-times"></i> <span>{PHP.L.adm_purgeall}</span></a>
								<a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn btn-primary"><i class="fa fa-times"></i> <span>{PHP.L.adm_ref_prunelowhits}</span></a>
							</div>
<!-- ENDIF -->
<!-- IF {PHP.is_ref_empty} -->
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width70">{PHP.L.Referer}</th>
										<th class="width30">{PHP.L.Hits}</th>
									</tr>
								</thead>
<!-- ENDIF -->
<!-- BEGIN: REFERERS_ROW -->
								<tr>
									<td colspan="2"><a href="http://{ADMIN_REFERERS_REFERER}">{ADMIN_REFERERS_REFERER}</a></td>
								</tr>
<!-- BEGIN: REFERERS_URI -->
								<tr>
									<td>&nbsp; &nbsp; <a href="{ADMIN_REFERERS_URI}">{ADMIN_REFERERS_URI}</a></td>
									<td class="textright">{ADMIN_REFERERS_COUNT}</td>
								</tr>
<!-- END: REFERERS_URI -->
<!-- END: REFERERS_ROW -->
<!-- IF {PHP.is_ref_empty} -->
							</table>

<!-- IF {ADMIN_REFERERS_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
							<p class="text-{PHP.R.admin-config-infoalign}">{PHP.L.Total}: {ADMIN_REFERERS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_REFERERS_ON_PAGE}</p>

<!-- ELSE -->
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width70">{PHP.L.Referer}</th>
										<th class="width30">{PHP.L.Hits}</th>
									</tr>
								</thead>
								<tr>
									<td class="text-center" colspan="2">{PHP.L.None}</td>
								</tr>
							</table>
<!-- ENDIF -->
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->