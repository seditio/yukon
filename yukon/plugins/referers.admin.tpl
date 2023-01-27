<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Referers}</h2>
			<div class="wrapper">

<!-- IF !{PHP.is_ref_empty} -->
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-70">{PHP.L.Referer}</th>
								<th class="w-30">{PHP.L.Hits}</th>
							</tr>
						</thead>
						<tbody>
							<tr class="{PHP.R.admin-table-tr-class}">
								<td colspan="2">{PHP.L.None}</td>
							</tr>
						</tbody>
					</table>
				</div>
<!-- ELSE -->
				<div class="{PHP.R.admin-table-responsive-container-class}">
<!-- IF {PHP.usr.isadmin} -->
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.adm_purgeall}</span></a>
						<a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.adm_ref_prunelowhits}</span></a>
					</div>
<!-- ENDIF -->
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-70">{PHP.L.Referer}</th>
								<th class="w-30">{PHP.L.Hits}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: REFERERS_ROW -->
							<tr>
								<td><a href="http://{ADMIN_REFERERS_REFERER}">{ADMIN_REFERERS_REFERER}</a></td>
<!-- BEGIN: REFERERS_URI -->
								<td><a href="{ADMIN_REFERERS_URI}">{ADMIN_REFERERS_URI}</a></td>
								<td class="text-end">{ADMIN_REFERERS_COUNT}</td>
							</tr>
<!-- END: REFERERS_URI -->
<!-- END: REFERERS_ROW -->
						</tbody>
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.Total}: {ADMIN_REFERERS_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_REFERERS_ON_PAGE}
					</p>
<!-- IF {ADMIN_REFERERS_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Referers Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
<!-- ENDIF -->

			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
