<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Trashcan}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class} mb-3">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}<span>{PHP.L.Configuration}</span></a>
						<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Wipeall}</span></a>
					</div>
<!-- BEGIN: TRASHCAN_ROW -->
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-5">{PHP.L.Type}</th>
								<th class="w-15">{PHP.L.Date}</th>
								<th class="w-35">{PHP.L.Title}</th>
								<th class="w-20">{PHP.L.adm_setby}</th>
								<th class="w-25">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
								<td>{ADMIN_TRASHCAN_DATE}</td>
								<td>{ADMIN_TRASHCAN_TITLE}</td>
								<td>{ADMIN_TRASHCAN_TRASHEDBY}</td>
								<td class="action">
									<div class="btn-group">
<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
										<a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-share}<span>{PHP.L.Restore}</span></a>
<!-- ENDIF -->
										<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<tr>
							<td class="w-20 text-end">{PHP.L.Key}</td>
							<td class="w-80">{PHP.L.Value}</td>
						</tr>
<!-- BEGIN: TRASHCAN_INFOROW -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td class="text-end">{ADMIN_TRASHCAN_INFO_ROW}</td>
							<td class="text-start">{ADMIN_TRASHCAN_INFO_VALUE}</td>
						</tr>
<!-- END: TRASHCAN_INFOROW -->
					</table>
<!-- END: TRASHCAN_ROW -->
				</div>
				<p class="{PHP.R.admin-pagination-p-class}">
					{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}
				</p>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
