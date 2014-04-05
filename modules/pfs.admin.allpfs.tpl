<!-- BEGIN: MAIN -->
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th class="width60">{PHP.L.User}</th>
					<th class="width20">{PHP.L.Files}</th>
					<th class="width20">{PHP.L.Edit}</th>
				</tr>
			</thead>
			<tbody>
<!-- BEGIN: ALLPFS_ROW -->
				<tr>
					<td>{ADMIN_ALLPFS_ROW_USER}</td>
					<td class="centerall">{ADMIN_ALLPFS_ROW_COUNT}</td>
					<td class="centerall"><a title="{PHP.L.Edit}" href="{ADMIN_ALLPFS_ROW_URL}">{PHP.R.icon_prefs}</a></td>
				</tr>
<!-- END: ALLPFS_ROW -->
			</tbody>
		</table>
		<p class="text-center">{PHP.L.Total}: {ADMIN_ALLPFS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_ALLPFS_ON_PAGE}</p>
<!-- IF {ADMIN_ALLPFS_PAGNAV} -->
		<div class="text-{PHP.R.admin-config-pagialign}">
			<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}</ul>
		</div>
<!-- ENDIF -->
<!-- END: MAIN -->