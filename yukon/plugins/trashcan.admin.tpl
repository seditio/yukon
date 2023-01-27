<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Trashcan}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}<span>{PHP.L.Configuration}</span></a>
						<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Wipeall}</span></a>
					</div>
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
<!-- BEGIN: TRASHCAN_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
								<td>{ADMIN_TRASHCAN_DATE}</td>
								<td><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
								<td>{ADMIN_TRASHCAN_TRASHEDBY}</td>
								<td class="action">
									<div class="btn-group">
<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
										<a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn {PHP.R.admin-button-success-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-share}<span>{PHP.L.Restore}</span></a>
<!-- ENDIF -->
										<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Wipe}</span></a>
									</div>
								</td>
							</tr>
<!-- END: TRASHCAN_ROW -->
<!-- BEGIN: TRASHCAN_EMPTY -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td colspan="5">
									{PHP.L.adm_trashcan_prune}
								</td>
							</tr>
<!-- END: TRASHCAN_EMPTY -->
						</tbody>
					</table>
				</div>
				<p class="{PHP.R.admin-pagination-p-class}">
					{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_TRASHCAN_COUNTER_ROW}
				</p>
<!-- IF {ADMIN_TRASHCAN_PAGNAV} -->
				<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Trashcan Pagination">
					<ul class="pagination {PHP.R.admin-pagination-list-class}">
						{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}
					</ul>
				</nav>
<!-- ENDIF -->
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
