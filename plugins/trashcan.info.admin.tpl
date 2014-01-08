<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-trash-o"></i> {PHP.L.Trashcan}</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-primary"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
								<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-danger"><i class="fa fa-times"></i> {PHP.L.Wipeall}</a>
							</div>
<!-- BEGIN: TRASHCAN_ROW -->
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width5">{PHP.L.Type}</th>
										<th class="width15">{PHP.L.Date}</th>
										<th class="width40">{PHP.L.Title}</th>
										<th class="width20">{PHP.L.adm_setby}</th>
										<th class="width20">{PHP.L.Action}</th>
									</tr>
								</thead>
								<tr>
									<td class="text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
									<td class="text-center">{ADMIN_TRASHCAN_DATE}</td>
									<td class="text-center">{ADMIN_TRASHCAN_TITLE}</td>
									<td class="text-center">{ADMIN_TRASHCAN_TRASHEDBY}</td>
									<td class="text-center action">
										<div class="btn-group">
<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
											<a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-share"></i> {PHP.L.Restore}</a>
<!-- ENDIF -->
											<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> {PHP.L.Delete}</a>
										</div>
									</td>
								</tr>
							</table>
							<table class="table table-striped">
								<tr>
									<td class="width20">{PHP.L.Key}</td>
									<td class="width80">{PHP.L.Value}</td>
								</tr>
<!-- BEGIN: TRASHCAN_INFOROW -->
								<tr>
									<td>{ADMIN_TRASHCAN_INFO_ROW}</td>
									<td class="text-right">{ADMIN_TRASHCAN_INFO_VALUE}</td>
								</tr>
<!-- END: TRASHCAN_INFOROW -->
							</table>
<!-- END: TRASHCAN_ROW -->
							<p class="text-{PHP.R.admin-config-infoalign}">{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}</p>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->