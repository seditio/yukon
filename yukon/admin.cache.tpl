<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: ADMIN_CACHE_MEMORY -->
		<div class="block">
			<h2>{PHP.R.icon-gears}{ADMIN_CACHE_MEMORY_DRIVER}</h2>
			<div class="wrapper">
				<div class="progress">
					<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_CACHE_MEMORY_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_CACHE_MEMORY_PERCENTBAR}%;">
						<span class="sr-only">{ADMIN_CACHE_MEMORY_PERCENTBAR}%</span>
					</div>
				</div>
				<p class="m-0 mt-2">{PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}</p>
			</div>
		</div>
<!-- END: ADMIN_CACHE_MEMORY -->

		<div class="block">
			<h2>{PHP.R.icon-gears}{PHP.L.adm_internalcache}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-trash}{PHP.L.adm_purgeall}</a>
						<a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-refresh}{PHP.L.Refresh}</a>
						<a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-check-square}{PHP.L.adm_cache_showall}</a>
					</div>
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-20">{PHP.L.Item}</th>
								<th class="w-10">{PHP.L.Section}</th>
								<th class="w-10">TTL</th>
								<th class="w-10">{PHP.L.Size}</th>
								<th class="w-35">{PHP.L.Value}</th>
								<th class="w-15">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>{PHP.L.Total}:</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
								<th>{ADMIN_CACHE_CACHESIZE}</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
							</tr>
						</tfoot>
						<tbody>
<!-- BEGIN: ADMIN_CACHE_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_CACHE_ITEM_NAME}</td>
								<td>{ADMIN_CACHE_REALM}</td>
								<td>{ADMIN_CACHE_EXPIRE}</td>
								<td>{ADMIN_CACHE_SIZE}</td>
								<td>{ADMIN_CACHE_VALUE}</td>
								<td class="action">
									<a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">
										{PHP.R.icon-trash}<span>{PHP.L.Delete}</span>
									</a>
								</td>
							</tr>
<!-- END: ADMIN_CACHE_ROW -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
