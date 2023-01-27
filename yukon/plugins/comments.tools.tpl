<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.comments_comments}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}<span>{PHP.L.Configuration}</span></a>
					</div>
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-5">#</th>
								<th class="w-5">{PHP.L.adm_area}</th>
								<th class="w-5">{PHP.L.Code}</th>
								<th class="w-15">{PHP.L.Author}</th>
								<th class="w-15">{PHP.L.Date}</th>
								<th class="w-30">{PHP.L.comments_comment}</th>
								<th class="w-25">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: ADMIN_COMMENTS_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_COMMENTS_ITEM_ID}</td>
								<td>{ADMIN_COMMENTS_AREA}</td>
								<td>{ADMIN_COMMENTS_CODE}</td>
								<td>{ADMIN_COMMENTS_AUTHOR}</td>
								<td>{ADMIN_COMMENTS_DATE}</td>
								<td>{ADMIN_COMMENTS_TEXT}</td>
								<td class="action">
									<div class="btn-group">
										<a title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
										<a title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
									</div>
								</td>
							</tr>
<!-- END: ADMIN_COMMENTS_ROW -->
						</tbody>
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.Total}: {ADMIN_COMMENTS_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_COMMENTS_COUNTER_ROW}
					</p>
<!-- IF {ADMIN_COMMENTS_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Comments Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
