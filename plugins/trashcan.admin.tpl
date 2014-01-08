<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-trash-o"></i> {PHP.L.Trashcan}</h5>
						<div class="wrapper">
							<div class="btn-group item-control">
								<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> <span>{PHP.L.Configuration}</span></a>
								<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-danger btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-times"></i> <span>{PHP.L.Wipeall}</span></a>
							</div>
							<table class="table table-bordered">
								<thead>
								<tr>
									<th class="width5">{PHP.L.Type}</th>
									<th class="width15">{PHP.L.Date}</th>
									<th class="width35">{PHP.L.Title}</th>
									<th class="width20">{PHP.L.adm_setby}</th>
									<th class="width25">{PHP.L.Action}</th>
								</tr>
								</thead>
<!-- BEGIN: TRASHCAN_ROW -->
								<tr>
									<td class="text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
									<td class="text-center">{ADMIN_TRASHCAN_DATE}</td>
									<td class="text-center"><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
									<td class="text-center">{ADMIN_TRASHCAN_TRASHEDBY}</td>
									<td class="centerall action">
										<div class="btn-group">
<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
											<a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-share"></i> <span>{PHP.L.Restore}</span></a>
<!-- ENDIF -->
											<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> <span>{PHP.L.Wipe}</span></a>
										</div>
									</td>
								</tr>
<!-- END: TRASHCAN_ROW -->
							</table>

<!-- IF {ADMIN_TRASHCAN_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
							<p class="text-{PHP.R.admin-config-infoalign}">{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_TRASHCAN_COUNTER_ROW}</p>

						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->