<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

		<div class="block">
			<h2>{PHP.R.icon-gears}{PHP.L.adm_diskcache}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-trash}{PHP.L.adm_purgeall}</a>
						<a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-refresh}{PHP.L.Refresh}</a>
					</div>
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-25">{PHP.L.Item}</th>
								<th class="w-25">{PHP.L.Files}</th>
								<th class="w-25">{PHP.L.Size}</th>
								<th class="w-25">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>{PHP.L.Total}:</th>
								<th>{ADMIN_DISKCACHE_CACHEFILES}</th>
								<th>{ADMIN_DISKCACHE_CACHESIZE}</th>
								<th>&nbsp;</th>
							</tr>
						</tfoot>
						<tbody>
<!-- BEGIN: ADMIN_DISKCACHE_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_DISKCACHE_ITEM_NAME}</td>
								<td>{ADMIN_DISKCACHE_FILES}</td>
								<td>{ADMIN_DISKCACHE_SIZE}</td>
								<td class="action">
									<a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">
										{PHP.R.icon-trash}<span>{PHP.L.Delete}</span>
									</a>
								</td>
							</tr>
<!-- END: ADMIN_DISKCACHE_ROW -->
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- END: MAIN -->
