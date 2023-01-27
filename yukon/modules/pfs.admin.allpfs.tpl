<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.adm_allpfs}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-60">{PHP.L.User}</th>
								<th class="w-20">{PHP.L.Files}</th>
								<th class="w-20">{PHP.L.Edit}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: ALLPFS_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_ALLPFS_ROW_USER}</td>
								<td>{ADMIN_ALLPFS_ROW_COUNT}</td>
								<td><a title="{PHP.L.Edit}" href="{ADMIN_ALLPFS_ROW_URL}">{PHP.R.icon_prefs}</a></td>
							</tr>
<!-- END: ALLPFS_ROW -->
						</tbody>
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.Total}: {ADMIN_ALLPFS_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_ALLPFS_ON_PAGE}
					</p>
<!-- IF {ADMIN_ALLPFS_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="PFS Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
