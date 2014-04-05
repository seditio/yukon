<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-comments"></i> {PHP.L.comments_comments}</h5>
						<div class="wrapper">
							<div class="btn-group item-control">
								<a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> <span>{PHP.L.Configuration}</span></a>
							</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width5">#</th>
										<th class="width5">{PHP.L.adm_area}</th>
										<th class="width5">{PHP.L.Code}</th>
										<th class="width15">{PHP.L.Author}</th>
										<th class="width15">{PHP.L.Date}</th>
										<th class="width30">{PHP.L.comments_comment}</th>
										<th class="width25">{PHP.L.Action}</th>
									</tr>
								</thead>
<!-- BEGIN: ADMIN_COMMENTS_ROW -->
								<tr>
									<td class="text-center">{ADMIN_COMMENTS_ITEM_ID}</td>
									<td class="text-center">{ADMIN_COMMENTS_AREA}</td>
									<td class="text-center">{ADMIN_COMMENTS_CODE}</td>
									<td class="text-center">{ADMIN_COMMENTS_AUTHOR}</td>
									<td class="text-center">{ADMIN_COMMENTS_DATE}</td>
									<td>{ADMIN_COMMENTS_TEXT}</td>
									<td class="action centerall">
										<div class="btn-group">
											<a title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> <span>{PHP.L.Open}</span></a>
											<a title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> <span>{PHP.L.Delete}</span></a>
										</div>
									</td>
								</tr>
<!-- END: ADMIN_COMMENTS_ROW -->
							</table>
							<p class="text-{PHP.R.admin-config-infoalign}">{PHP.L.Total}: {ADMIN_COMMENTS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_COMMENTS_COUNTER_ROW}</p>
<!-- IF {ADMIN_COMMENTS_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->